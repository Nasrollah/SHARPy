'''
@author: Rob Simpson (rjs10@imperial.ac.uk)
'''
import numpy as np
import scipy
import matplotlib.pyplot as plt
from scipy.signal import lti, ss2tf, abcd_normalize
import scipy.signal.cont2discrete as scipyCont2discrete
import muaompc

def pltContEig(self, A):
    """@brief Plot continuous time eigenvalues.
    """
    Vals = scipy.linalg.eig(A)[0]
    plt.plot(np.real(scipy.linalg.eig(A)[0]),
                     np.imag(scipy.linalg.eig(A)[0]),
                     'ko')
    plt.plot((0,0),(-10e-10,1.1*np.max(np.imag(Vals))),'k--')
    plt.ylim((-10e-10,1.1*np.max(np.imag(Vals))))
    plt.grid()
    plt.show()
    
def plotDiscEig(self, A):
    """@brief Plot discrete time eigenvalues.
    """
    Vals = scipy.linalg.eig(A)[0]
    plt.plot(np.real(scipy.linalg.eig(A)[0]),
             np.imag(scipy.linalg.eig(A)[0]),
             'ko')
    unitCircle = plt.Circle((0,0),1.0,color='k',fill=False)
    fig = plt.gcf()
    fig.gca().add_artist(unitCircle)
    plt.axis('equal')
    isStable = all( np.less( np.abs(Vals),
                    np.ones((np.shape(A)[0])) ) )
    if isStable:
        plt.xlim(-1.1,1.1)
        plt.ylim(-1.1,1.1)
    elif isStable == False: 
        plt.xlim(( min( -1.1, 1.1*np.min(np.real(Vals)) ),
                   max(  1.1, 1.1*np.max(np.real(Vals)) ) ))
        plt.ylim(( min( -1.1, 1.1*np.min(np.imag(Vals)) ),
                   max(  1.1, 1.1*np.max(np.imag(Vals)) ) ))
    plt.grid()
    plt.show()

class StateSpace(lti):
    """@brief State-space representation of LTI systems.
    @details Inherits from scipy.signal.lti class.
    @author Rob Simpson rjs10@imperial.ac.uk
    """
    
    def __init__(self, *args, **kwords):
        """@brief Based on scipy.signal lti class init.
        Initialize the LTI system using either:

            - (numerator, denominator)
            - (zeros, poles, gain)
            - (A, B, C, D) : state-space.
            - (A, B, C, D, Ts) : discrete-time state-space
        """
        N = len(args)
        if N <= 4:
            super(StateSpace, self).__init__(*args, **kwords)
        elif N == 5:
            self._A, self._B, self._C, self._D = abcd_normalize(*args[0:4])
            # Check Ts is positive.
            if args[4] <= 0.0:
                raise ValueError("Ts must be positive")
            self._Ts = args[4]
            self.inputs = self.B.shape[-1]
            self.outputs = self.C.shape[0]
            self._isDiscrete = True
            self._updateDiscrete()
        else:
            raise ValueError("Needs 2, 3, 4, or 5 arguments.")
    
        
    def _updateDiscrete(self):
        raise NotImplementedError("Conversion from continuous to discrete time")
        # TODO: Convert to continuous-time before applying below
#        self._num, self._den = ss2tf(self.A, self.B, self.C, self.D)
#        self._zeros, self._poles, self._gain = ss2zpk(self.A, self.B,
#                                                          self.C, self.D)
    
    def cont2discrete(self, Ts):
        """@brief Converts continuous-time to discrete-time using scipy's
        cont2discrete function.
        """
        # Check it is a continuous time state-space system
        try:
            if self._isDiscrete == True:
                raise TypeError("System is already discrete-time")
        except AttributeError:
            self._A, self._B, self._C, self._D, self._Ts = \
                scipyCont2discrete((self._A,self._B,self._C,self._D),Ts)
        self._isDiscrete = True
        # No need to _update()
        
    
    def isStable(self):
        """@brief Checks eigenvalues for stability.
        @return: True if stable, False if unstable.
        """
        
        try:
            if self._isDiscrete == True:
                # Discrete-time eigenvalue check.
                Vals = scipy.linalg.eig(self._A)[0]
                return all( np.less( np.abs(Vals),
                            np.ones((np.shape(self._A)[0])) ) )
            elif self._isDiscrete == False:
                # Continuous-time eigenvalue check.
                Vals = scipy.linalg.eig(self._A)[0]
                return all( np.less( np.real(Vals),
                                     np.ones((np.shape(self._A)[0])) ) )
        except AttributeError:
            # Assuming continuous-time state space
            pass
        
    def _plotContEig(self, A):
        """@brief Plot continuous time eigenvalues.
        """
        Vals = scipy.linalg.eig(A)[0]
        plt.plot(np.real(scipy.linalg.eig(A)[0]),
                         np.imag(scipy.linalg.eig(A)[0]),
                         'ko')
        plt.plot((0,0),(-10e-10,1.1*np.max(np.imag(Vals))),'k--')
        plt.ylim((-10e-10,1.1*np.max(np.imag(Vals))))
        plt.grid()
        plt.show()
        
    def _plotDiscEig(self, A):
        """@brief Plot discrete time eigenvalues.
        """
        Vals = scipy.linalg.eig(A)[0]
        plt.plot(np.real(scipy.linalg.eig(A)[0]),
                 np.imag(scipy.linalg.eig(A)[0]),
                 'ko')
        unitCircle = plt.Circle((0,0),1.0,color='k',fill=False)
        fig = plt.gcf()
        fig.gca().add_artist(unitCircle)
        plt.axis('equal')
        isStable = all( np.less( np.abs(Vals),
                        np.ones((np.shape(A)[0])) ) )
        if isStable:
            plt.xlim(-1.1,1.1)
            plt.ylim(-1.1,1.1)
        elif isStable == False: 
            plt.xlim(( min( -1.1, 1.1*np.min(np.real(Vals)) ),
                       max(  1.1, 1.1*np.max(np.real(Vals)) ) ))
            plt.ylim(( min( -1.1, 1.1*np.min(np.imag(Vals)) ),
                       max(  1.1, 1.1*np.max(np.imag(Vals)) ) ))
        plt.grid()
        plt.show()
            
        
    def plotEig(self, option = 0):
        """@brief Plot the system Eigenvalues.
        
        @param Option: 0 for continuous time (Laplace transform),
                       1 for discrete-time (Z-transform)
        """
        
        try:
            if self._isDiscrete == True and option == 0:
                Acont = np.real(scipy.linalg.logm(self._A))/self._Ts
                self._plotContEig(Acont)
            elif self._isDiscrete == True and option == 1:
                self._plotDiscEig(self._A)
            elif self._isDiscrete == False and option == 0:
                self._plotContEig(self._A)
            elif self._isDiscrete == False and option == 1:
                Adisc = scipy.linalg.expm(self._A*self._Ts)
                self._plotDiscEig(Adisc)
            else:
                raise ValueError("_isDiscrete, option must be True/False, 0/1")
        except AttributeError:
            #Assuming continuous time state-space
            if option == 0:
                self._plotContEig(self._A)
            elif option == 1:
                raise TypeError("Ts not yet specified, was never discrete.")
            else:
                raise ValueError("option must be 0/1")
            
    def nX(self):
        "@brief Number of states."
        return self._A.shape[0]
    
    def nU(self):
        "@breif Number of inputs."
        return self._B.shape[1]

    

if __name__ == '__main__':
    
    # Define a continuous time system. Maciejowski's Cessna aircraft, pg. 64. 
    # 4 states
    A = np.array([[-1.2822,       0.0,      0.98,     0.0],
                     [    0.0,       0.0,       1.0,     0.0],
                     [-5.4293,       0.0,   -1.8366,     0.0],
                     [ -128.2,     128.2,       0.0,     0.0]])
    
    # 1 input
    B = np.array([[ -0.3],
                     [  0.0],
                     [-17.0],
                     [  0.0]])
    
    # 3 outputs
    C = np.array([[    0.0,       1.0,       0.0,     0.0],
                     [    0.0,       0.0,       0.0,     1.0],
                     [ -128.2,     128.2,       0.0,     0.0]])
    
    D = np.array([[  0.0],
                     [  0.0],
                     [  0.0]])
    
    # Define state-space system.
    dSys = StateSpace(A,B,C,D) # First create a continuous time.
    
    dt = 0.5
    dSys.cont2discrete(dt) # Convert to discrete.
    
    # begin defining control using muaompc
    # http://ifatwww.et.uni-magdeburg.de/syst/research/muAO-MPC/doc/html/tutor.advanced.html
    dt = 0.5
    N = 10
    mu = 100
    
    # TODO: Automatically append auxiliary states for slew rates.
    Ad = np.zeros((5,5))
    Ad[:Ad.shape[0]-1,:Ad.shape[1]-1] = np.array(dSys.A, copy=True)
    
    Bd = np.array(dSys.B, copy=True)
    Bd.resize((Bd.shape[0]+1, Bd.shape[1]))
    Bd[dSys.nX():,:] = np.eye(dSys.nU())
    
    # Weighting matrices
    Q = np.eye(Ad.shape[0])
    Q[4,4] = 0.0 #Auxiliary state for slew rates
    P = Q # Terminal constraint
    R = np.eye(Bd.shape[1])
    
    # Input constraints
    eui = 15.0*np.pi/180.0
    u_lb = [[-eui]]
    u_ub = [[eui]]
    
    # Mixed constraints
    ex2 = 20.0*np.pi/180.0
    ex5 = 30*np.pi/180.0*dt # Maximum change in control input each time step.
    ey3 = 30.0 # Altitude rate limit, ms-1.
    e_lb = [[-ex2], [-ey3], [-ex5]]
    e_ub = [[ex2], [ey3], [ex5]]
    
    # Mixed constraint matrices
    Kx = [[     0,      1,      0,      0,      0],
          [-128.2,  128.2,      0,      0,      0],
          [     0.,     0.,     0.,     0.,    -1.]]
    Ku = [[0],
          [0],
          [1]]
    
    # Terminal constraints
    f_lb = e_lb
    f_ub = e_ub
    F = Kx # Terminal constraint matrix
    
    # set-up MPC problem
    