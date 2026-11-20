#version 3.6;
#declare BAS = true;
#declare TRANS = false;
#include "babel_povray3.inc"

//Coodinates of atoms 1 - 8
#declare mol_0_pos_1 = <1.00122,-0.080269,0.0265713>;
#declare mol_0_pos_2 = <2.49787,-0.0348991,0.0849326>;
#declare mol_0_pos_3 = <3.13565,0.603545,0.906192>;
#declare mol_0_pos_4 = <3.08343,-0.78239,-0.876595>;
#declare mol_0_pos_5 = <0.589533,0.541742,0.826686>;
#declare mol_0_pos_6 = <0.65475,-1.10652,0.171332>;
#declare mol_0_pos_7 = <0.65475,0.313102,-0.932281>;
#declare mol_0_pos_8 = <2.44808,-1.23685,-1.46119>;

//Povray-description of atoms 1 - 8
#declare mol_0_atom1 = object {
	  Atom_C
	  translate mol_0_pos_1
	 }
#declare mol_0_atom2 = object {
	  Atom_C
	  translate mol_0_pos_2
	 }
#declare mol_0_atom3 = object {
	  Atom_O
	  translate mol_0_pos_3
	 }
#declare mol_0_atom4 = object {
	  Atom_O
	  translate mol_0_pos_4
	 }
#declare mol_0_atom5 = object {
	  Atom_H
	  translate mol_0_pos_5
	 }
#declare mol_0_atom6 = object {
	  Atom_H
	  translate mol_0_pos_6
	 }
#declare mol_0_atom7 = object {
	  Atom_H
	  translate mol_0_pos_7
	 }
#declare mol_0_atom8 = object {
	  Atom_H
	  translate mol_0_pos_8
	 }

//Povray-description of bonds 1 - 7
#if (BAS)
#declare mol_0_bond0 = object {
	  bond_1
	  scale <1.49847,1.0000,1.0000>
	  rotate <0.0000,0.0000,1.73504>
	  rotate <0.0000,-2.23311,0.0000>
	  translate mol_0_pos_1
	 }
#declare mol_0_bond1 = object {
	  bond_2
	  scale <1.22018,1.0000,1.0000>
	  rotate <0.0000,0.0000,31.5496>
	  rotate <0.0000,-52.1673,0.0000>
	  translate mol_0_pos_2
	 }
#declare mol_0_bond2 = object {
	  bond_1
	  scale <1.35136,1.0000,1.0000>
	  rotate <0.0000,0.0000,-33.5828>
	  rotate <0.0000,58.6587,0.0000>
	  translate mol_0_pos_2
	 }
#declare mol_0_bond3 = object {
	  bond_1
	  scale <1.09388,1.0000,1.0000>
	  rotate <0.0000,0.0000,34.6546>
	  rotate <0.0000,-117.228,0.0000>
	  translate mol_0_pos_1
	 }
#declare mol_0_bond4 = object {
	  bond_1
	  scale <1.09279,1.0000,1.0000>
	  rotate <0.0000,0.0000,-69.9026>
	  rotate <0.0000,-157.324,0.0000>
	  translate mol_0_pos_1
	 }
#declare mol_0_bond5 = object {
	  bond_1
	  scale <1.09279,1.0000,1.0000>
	  rotate <0.0000,0.0000,21.0984>
	  rotate <0.0000,109.867,0.0000>
	  translate mol_0_pos_1
	 }
#declare mol_0_bond6 = object {
	  bond_1
	  scale <0.975683,1.0000,1.0000>
	  rotate <0.0000,0.0000,-27.7612>
	  rotate <0.0000,137.383,0.0000>
	  translate mol_0_pos_4
	 }
#end //(BAS-Bonds)

#if (CST)
#declare mol_0_bond0 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.749233,1.0000,1.0000>
	    rotate <0.0000,0.0000,1.73504>
	    rotate <0.0000,-2.23311,0.0000>
	    translate mol_0_pos_1
	   }
	   object {
	    bond_1
	    pigment{color Color_C2}
	    scale <0.749233,1.0000,1.0000>
	    rotate <0.0000,0.0000,181.735>
	    rotate <0.0000,-2.23311,0.0000>
	    translate mol_0_pos_2
	   }
	  }
	 }

#declare mol_0_bond1 = object {
	  union {
	   object {
	    bond_2
	    pigment{color Color_C2}
	    scale <0.610091,1.0000,1.0000>
	    rotate <0.0000,0.0000,31.5496>
	    rotate <0.0000,-52.1673,0.0000>
	    translate mol_0_pos_2
	   }
	   object {
	    bond_2
	    pigment{color Color_O2}
	    scale <0.610091,1.0000,1.0000>
	    rotate <0.0000,0.0000,211.55>
	    rotate <0.0000,-52.1673,0.0000>
	    translate mol_0_pos_3
	   }
	  }
	 }

#declare mol_0_bond2 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C2}
	    scale <0.675679,1.0000,1.0000>
	    rotate <0.0000,0.0000,-33.5828>
	    rotate <0.0000,58.6587,0.0000>
	    translate mol_0_pos_2
	   }
	   object {
	    bond_1
	    pigment{color Color_O3}
	    scale <0.675679,1.0000,1.0000>
	    rotate <0.0000,0.0000,146.417>
	    rotate <0.0000,58.6587,0.0000>
	    translate mol_0_pos_4
	   }
	  }
	 }

#declare mol_0_bond3 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.546939,1.0000,1.0000>
	    rotate <0.0000,0.0000,34.6546>
	    rotate <0.0000,-117.228,0.0000>
	    translate mol_0_pos_1
	   }
	   object {
	    bond_1
	    pigment{color Color_H}
	    scale <0.546939,1.0000,1.0000>
	    rotate <0.0000,0.0000,214.655>
	    rotate <0.0000,-117.228,0.0000>
	    translate mol_0_pos_5
	   }
	  }
	 }

#declare mol_0_bond4 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.546393,1.0000,1.0000>
	    rotate <0.0000,0.0000,-69.9026>
	    rotate <0.0000,-157.324,0.0000>
	    translate mol_0_pos_1
	   }
	   object {
	    bond_1
	    pigment{color Color_H}
	    scale <0.546393,1.0000,1.0000>
	    rotate <0.0000,0.0000,110.097>
	    rotate <0.0000,-157.324,0.0000>
	    translate mol_0_pos_6
	   }
	  }
	 }

#declare mol_0_bond5 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_C3}
	    scale <0.546393,1.0000,1.0000>
	    rotate <0.0000,0.0000,21.0984>
	    rotate <0.0000,109.867,0.0000>
	    translate mol_0_pos_1
	   }
	   object {
	    bond_1
	    pigment{color Color_H}
	    scale <0.546393,1.0000,1.0000>
	    rotate <0.0000,0.0000,201.098>
	    rotate <0.0000,109.867,0.0000>
	    translate mol_0_pos_7
	   }
	  }
	 }

#declare mol_0_bond6 = object {
	  union {
	   object {
	    bond_1
	    pigment{color Color_O3}
	    scale <0.487841,1.0000,1.0000>
	    rotate <0.0000,0.0000,-27.7612>
	    rotate <0.0000,137.383,0.0000>
	    translate mol_0_pos_4
	   }
	   object {
	    bond_1
	    pigment{color Color_HO}
	    scale <0.487841,1.0000,1.0000>
	    rotate <0.0000,0.0000,152.239>
	    rotate <0.0000,137.383,0.0000>
	    translate mol_0_pos_8
	   }
	  }
	 }

#end // (CST-Bonds)


//All atoms of molecule mol_0
#ifdef (TRANS)
#declare mol_0_atoms = merge {
#else
#declare mol_0_atoms = union {
#end //(End of TRANS)
	  object{mol_0_atom1}
	  object{mol_0_atom2}
	  object{mol_0_atom3}
	  object{mol_0_atom4}
	  object{mol_0_atom5}
	  object{mol_0_atom6}
	  object{mol_0_atom7}
	  object{mol_0_atom8}
	 }

//Bonds only needed for ball and sticks or capped sticks models
#if (BAS | CST)
#declare mol_0_bonds = union {
	  object{mol_0_bond0}
	  object{mol_0_bond1}
	  object{mol_0_bond2}
	  object{mol_0_bond3}
	  object{mol_0_bond4}
	  object{mol_0_bond5}
	  object{mol_0_bond6}
	 }
#end


//Definition of molecule mol_0
#if (SPF)
#declare mol_0 = object{
	  mol_0_atoms
#else
#declare mol_0 = union {
	  object{mol_0_atoms}
#if (BAS | CST)//(Not really needed at moment!)
#if (TRANS)
	  difference {
	   object{mol_0_bonds}
	   object{mol_0_atoms}
	  }
#else
	  object{mol_0_bonds}
#end //(End of TRANS)
#end //(End of (BAS|CST))
#end //(End of SPF)
//	  bounded_by {
//	   box {
//	    <-3,-4.23685,-4.46119>
//	    <6.13565,3.60354,3.90619>
	 }

//Center of molecule mol_0 (bounding box)
#declare mol_0_center = <-1.56783,0.316653,0.277498>;

#declare AceticAcid = object { mol_0 translate mol_0_center }
