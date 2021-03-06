/*
 * PanelTools.hpp
 *
 *  Created on: 13 Feb 2013
 *      Author: rjs10
 */

#ifndef PANELTOOLS_HPP_
#define PANELTOOLS_HPP_

void PanelNormal(const double* p1, const double* p2, \
				 const double* p3, const double* p4, \
				 double* normal);

void PanelTau_c(const double* p1, const double* p2, \
				 const double* p3, const double* p4, \
				 double* Tau_c);

void PanelTau_s(const double* p1, const double* p2, \
				 const double* p3, const double* p4, \
				 double* Tau_s);


double PanelDeltaC(const double* p1, const double* p2, \
				 const double* p3, const double* p4);

double PanelDeltaS(const double* p1, const double* p2, \
				 const double* p3, const double* p4);


double PanelArea(const double* p1, const double* p2, \
				 const double* p3, const double* p4);


#endif /* PANELTOOLS_HPP_ */
