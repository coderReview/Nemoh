!--------------------------------------------------------------------------------------
!
!   Copyright 2014 Ecole Centrale de Nantes, 1 rue de la No�, 44300 Nantes, France
!
!   Licensed under the Apache License, Version 2.0 (the "License");
!   you may not use this file except in compliance with the License.
!   You may obtain a copy of the License at
!
!       http://www.apache.org/licenses/LICENSE-2.0
!
!   Unless required by applicable law or agreed to in writing, software
!   distributed under the License is distributed on an "AS IS" BASIS,
!   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
!   See the License for the specific language governing permissions and
!   limitations under the License. 
!
!   Contributors list:
!   - A. Babarit  
!
!--------------------------------------------------------------------------------------
    SUBROUTINE Compute_RAOs(RAOS,Results)
!    
    USE MResults
!    
    IMPLICIT NONE
!
!   Inputs/outputs
    TYPE(TResults) :: Results
    COMPLEX,DIMENSION(Results%Nintegration,Results%Nw,*) :: RAOs
!   Locals
    INTEGER :: j,i,k
    REAL :: PI
!
    PI=4.*ATAN(1.)
    DO k=1,Results%Nradiation
        DO j=1,Results%Nw
            DO i=1,Results%Nbeta
                RAOs(k,j,i)=CMPLX(0.,0.)
            END DO
        END DO
    END DO  
!
    END SUBROUTINE Compute_RAOs