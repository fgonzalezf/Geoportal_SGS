<% // quicklinkBody.jsp - Links page (JSF body) %>
<!--  
 <div id="default" style="margin-bottom:20px" title="">
    
     Conocimiento geoquímico del territorio nacional al servicio del pais
    </center>
</div>


<div id="tbllocal"></div>
-->

<style>
.elements {
  font-size: 10px; }
  @media screen and (min-width: 400px) {
    .elements {
      font-size: calc(10px + 8 * ((100vw - 600px) / 1320)); } }
  @media screen and (min-width: 1920px) {
    .elements {
      font-size: 18px; } }

.element {
  display: none;
   }

.key {
  display: none; }

@media screen and (min-width: 600px) {
  .row {
    display: flex;
    text-align: center;
    height: 4vmin;
    justify-content: space-around; }
  .f-block .row {
    justify-content: flex-end; }
  .element {
    display: flex;
    font-weight: bold;
    align-items: center;
    justify-content: center;
    flex: 2vw 0 0;
    color: black;
    box-sizing: border-box;
    border-radius: 3px;
    margin: 1px;
    text-decoration: none; }
  .key {
    display: block;
    padding: 0;
    width: 60%;
    max-width: 650px;
    list-style-type: none;
    color: black;
    line-height: 2.0;
    font-weight: normal; }
  .key li {
    display: inline-block;
    margin: 0 .2rem;
    position: relative;
    padding-left: 20px;
    cursor: pointer; }
  .key li:before {
    content: '';
    display: block;
    position: absolute;
    left: 0;
    top: 50%;
    transform: translate(0, -50%);
    width: 16px;
    height: 16px; } }

.element.group-base {
  background-color: #E115DA; }
  .element.group-base:hover {
    background-color: #F4A9F1; }

.description.group-base {
  background-color: rgba(225, 170, 173, 0.5); }
  .description.group-base:hover {
    background-color: rgba(212, 132, 137, 0.8); }

.key li.group-base:before {
  background-color: #E115DA !important; }

.hover-group-base .element {
  opacity: .3; }

.hover-group-base .element.group-base {
  opacity: 1; }

.element.group-metadata {
  background-color: #ACAEAB; }
  .element.group-metadata:hover {
    background-color: #FFFFFF; }

.key li.group-metadata:before {
  background-color: #ACAEAB !important; }

.hover-group-metadata .element {
  opacity: .3; }

.hover-group-metadata .element.group-metadata {
  opacity: 1; }

.element.group-sectioning {
  background-color: #d4a784; }
  .element.group-sectioning:hover {
    background-color: #e1c2aa; }

.description.group-sectioning {
  background-color: rgba(225, 194, 170, 0.5); }
  .description.group-sectioning:hover {
    background-color: rgba(212, 167, 132, 0.8); }

.key li.group-sectioning:before {
  background-color: #d4a784; }

.hover-group-sectioning .element {
  opacity: .5; }

.hover-group-sectioning .element.group-sectioning {
  opacity: 1; }

.element.group-text-content {
  background-color: #d4bb84; }
  .element.group-text-content:hover {
    background-color: #e1d0aa; }

.description.group-text-content {
  background-color: rgba(225, 208, 170, 0.5); }
  .description.group-text-content:hover {
    background-color: rgba(212, 187, 132, 0.8); }

.key li.group-text-content:before {
  background-color: #d4bb84; }

.hover-group-text-content .element {
  opacity: .5; }

.hover-group-text-content .element.group-text-content {
  opacity: 1; }

.element.group-text-semantics {
  background-color: #d4cf84; }
  .element.group-text-semantics:hover {
    background-color: #e1deaa; }

.description.group-text-semantics {
  background-color: rgba(225, 222, 170, 0.5); }
  .description.group-text-semantics:hover {
    background-color: rgba(212, 207, 132, 0.8); }

.key li.group-text-semantics:before {
  background-color: #d4cf84; }

.hover-group-text-semantics .element {
  opacity: .5; }

.hover-group-text-semantics .element.group-text-semantics {
  opacity: 1; }

.element.group-media {
  background-color: #c5d484; }
  .element.group-media:hover {
    background-color: #d7e1aa; }

.description.group-media {
  background-color: rgba(215, 225, 170, 0.5); }
  .description.group-media:hover {
    background-color: rgba(197, 212, 132, 0.8); }

.key li.group-media:before {
  background-color: #c5d484; }

.hover-group-media .element {
  opacity: .5; }

.hover-group-media .element.group-media {
  opacity: 1; }

.element.group-embedded {
  background-color: #b1d484; }
  .element.group-embedded:hover {
    background-color: #c9e1aa; }

.description.group-embedded {
  background-color: rgba(201, 225, 170, 0.5); }
  .description.group-embedded:hover {
    background-color: rgba(177, 212, 132, 0.8); }

.key li.group-embedded:before {
  background-color: #b1d484; }

.hover-group-embedded .element {
  opacity: .5; }

.hover-group-embedded .element.group-embedded {
  opacity: 1; }

.element.group-script {
  background-color: #9dd484; }
  .element.group-script:hover {
    background-color: #bbe1aa; }

.description.group-script {
  background-color: rgba(187, 225, 170, 0.5); }
  .description.group-script:hover {
    background-color: rgba(157, 212, 132, 0.8); }

.key li.group-script:before {
  background-color: #9dd484; }

.hover-group-script .element {
  opacity: .5; }

.hover-group-script .element.group-script {
  opacity: 1; }

.element.group-edits {
  background-color: #89d484; }
  .element.group-edits:hover {
    background-color: #ade1aa; }

.description.group-edits {
  background-color: rgba(173, 225, 170, 0.5); }
  .description.group-edits:hover {
    background-color: rgba(137, 212, 132, 0.8); }

.key li.group-edits:before {
  background-color: #89d484; }

.hover-group-edits .element {
  opacity: .5; }

.hover-group-edits .element.group-edits {
  opacity: 1; }

.element.group-table {
  background-color: #84d493; }
  .element.group-table:hover {
    background-color: #aae1b4; }

.description.group-table {
  background-color: rgba(170, 225, 180, 0.5); }
  .description.group-table:hover {
    background-color: rgba(132, 212, 147, 0.8); }

.key li.group-table:before {
  background-color: #84d493; }

.hover-group-table .element {
  opacity: .5; }

.hover-group-table .element.group-table {
  opacity: 1; }

.element.group-forms {
  background-color: #84d4a7; }
  .element.group-forms:hover {
    background-color: #aae1c2; }

.description.group-forms {
  background-color: rgba(170, 225, 194, 0.5); }
  .description.group-forms:hover {
    background-color: rgba(132, 212, 167, 0.8); }

.key li.group-forms:before {
  background-color: #84d4a7; }

.hover-group-forms .element {
  opacity: .5; }

.hover-group-forms .element.group-forms {
  opacity: 1; }

.element.group-interactive {
  background-color: #84d4bb; }
  .element.group-interactive:hover {
    background-color: #aae1d0; }

.description.group-interactive {
  background-color: rgba(170, 225, 208, 0.5); }
  .description.group-interactive:hover {
    background-color: rgba(132, 212, 187, 0.8); }

.key li.group-interactive:before {
  background-color: #84d4bb; }

.hover-group-interactive .element {
  opacity: .5; }

.hover-group-interactive .element.group-interactive {
  opacity: 1; }

.element.group-web-components {
  background-color: #84d4cf; }
  .element.group-web-components:hover {
    background-color: #aae1de; }

.description.group-web-components {
  background-color: rgba(170, 225, 222, 0.5); }
  .description.group-web-components:hover {
    background-color: rgba(132, 212, 207, 0.8); }

.key li.group-web-components:before {
  background-color: #84d4cf; }

.hover-group-web-components .element {
  opacity: .5; }

.hover-group-web-components .element.group-web-components {
  opacity: 1; }
</style>
	
	<!--  <h1>Atlas Geoquímico de Colombia Versión 2016</h1>-->
	<div class="elements" >
	<div class="row">
		<a href="#html" class="element group-metadata" target="_blank"><span>H</span></a>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
        <div class="element empty-element"></div>
       <div class="element empty-element"></div>
       <div class="element empty-element"></div>
		<a href="#output" class="element group-metadata" target="_blank"><span>He</span></a>
	</div>
	<div class="row">
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Li.pdf" class="element group-base" target="_blank"><span>Li</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Be.pdf" class="element group-base" target="_blank"><span>Be</span></a>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
		<a href="#strong" class="element group-metadata" target="_blank"><span>B</span></a>
		<a href="#area" class="element group-metadata" target="_blank"><span>C</span></a>
		<a href="#param" class="element group-metadata" target="_blank"><span>N</span></a>
		<a href="#caption" class="element group-metadata" target="_blank"><span>O</span></a>
		<a href="#th" class="element group-metadata" target="_blank"><span>F</span></a>
		<a href="#input" class="element group-metadata" target="_blank"><span>Ne</span></a>

	</div>
	<div class="row">
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Na2O.pdf" class="element group-base" target="_blank"><span>Na</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/MgO.pdf" class="element group-base" target="_blank"><span>Mg</span></a>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
		<div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
      <div class="element empty-element"></div>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Al.pdf" class="element group-base" target="_blank"><span>Al</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/SiO2.pdf" class="element group-base" target="_blank"><span>Si</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/P2O5.pdf" class="element group-base" target="_blank"><span>P</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/S.pdf" class="element group-base" target="_blank"><span>S</span></a>
		<a href="#keygen" class="element group-metadata" target="_blank"><span>Ci</span></a>
		<a href="#select" class="element group-metadata" target="_blank"><span>Ar</span></a>
	</div>
	<div class="row">
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/K2O.pdf" class="element group-base" target="_blank"><span>K</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/CaO.pdf" class="element group-base" target="_blank"><span>Ca</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Sc.pdf" class="element group-base" target="_blank"><span>Sc</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/TiO2.pdf" class="element group-base" target="_blank"><span>Ti</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/V.pdf" class="element group-base" target="_blank"><span>V</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Cr.pdf" class="element group-base" target="_blank"><span>Cr</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Mn.pdf" class="element group-base" target="_blank"><span>Mn</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Fe2O3.pdf" class="element group-base" target="_blank"><span>Fe</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Co.pdf" class="element group-base" target="_blank"><span>Co</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Ni.pdf" class="element group-base" target="_blank"><span>Ni</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Cu.pdf" class="element group-base" target="_blank"><span>Cu</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Zn.pdf" class="element group-base" target="_blank"><span>Zn</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Ga.pdf" class="element group-base" target="_blank"><span>Ga</span></a>
		<a href="#label" class="element group-metadata" target="_blank"><span>Ge</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/As.pdf" class="element group-base" target="_blank"><span>As</span></a>
        <a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Se.pdf" class="element group-base" target="_blank"><span>Se</span></a>
        <a href="#label" class="element group-metadata" target="_blank"><span>Br</span></a>
        <a href="#details" class="element group-metadata" target="_blank"><span>Kr</span></a>
	</div>
	<div class="row">
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Rb.pdf" class="element group-base" target="_blank"><span>Rb</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Sr.pdf" class="element group-base" target="_blank"><span>Sr</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Y.pdf" class="element group-base" target="_blank"><span>Y</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Zr.pdf" class="element group-base" target="_blank"><span>Zr</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Nb.pdf" class="element group-base" target="_blank"><span>Nb</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Mo.pdf" class="element group-base" target="_blank"><span>Mo</span></a>
		<a href="#q" class="element group-metadata" target="_blank"><span>Tc</span></a>
		<a href="#s" class="element group-metadata" target="_blank"><span>Ru</span></a>
		<a href="#time" class="element group-metadata" target="_blank"><span>Rh</span></a>
		<a href="#track" class="element group-metadata" target="_blank"><span>Pd</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Ag.pdf" class="element group-base" target="_blank"><span>Ag</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Cd.pdf" class="element group-base" target="_blank"><span>Cd</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/In.pdf" class="element group-base" target="_blank"><span>In</span></a>
		<a href="#legend" class="element group-metadata" target="_blank"><span>Sn</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Sb.pdf" class="element group-base" target="_blank"><span>Sb</span></a>
        <a href="#button" class="element group-metadata" target="_blank"><span>Te</span></a>
        <a href="#legend" class="element group-metadata" target="_blank"><span>I</span></a>
        <a href="#dialog" class="element group-metadata" target="_blank"><span>Xe</span></a>
	</div>
	<div class="row">
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Cs.pdf" class="element group-base" target="_blank"><span>Cs</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Ba.pdf" class="element group-base" target="_blank"><span>Ba</span></a>
		<a href="#hr" class="element group-metadata" target="_blank"><span>57-71</span></a>
		<a href="#ul" class="element group-metadata" target="_blank"><span>Hf</span></a>
		<a href="#br" class="element group-metadata" target="_blank"><span>Ta</span></a>
		<a href="#em" class="element group-metadata" target="_blank"><span>W</span></a>
		<a href="#rp" class="element group-metadata" target="_blank"><span>Re</span></a>
		<a href="#samp" class="element group-metadata" target="_blank"><span>Os</span></a>
		<a href="#u" class="element group-metadata" target="_blank"><span>Ir</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Pt.pdf" class="element group-base" target="_blank"><span>Pt</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Au.pdf" class="element group-base" target="_blank"><span>Au</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Hg.pdf" class="element group-base" target="_blank"><span>Hg</span></a>
		<a href="#datalist" class="element group-metadata" target="_blank"><span>Tl</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Pb.pdf" class="element group-base" target="_blank"><span>Pb</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Bi.pdf" class="element group-base" target="_blank"><span>Bi</span></a>
        <a href="#datalist" class="element group-metadata" target="_blank"><span>Po</span></a>
        <a href="#meter" class="element group-metadata" target="_blank"><span>At</span></a>
        <a href="#menu" class="element group-metadata" target="_blank"><span>Rn</span></a>
	</div>
	<div class="row">
		<a href="#article" class="element group-metadata" target="_blank"><span>Fr</span></a>
		<a href="#div" class="element group-metadata" target="_blank"><span>Ra</span></a>
		<a href="#li" class="element group-metadata" target="_blank"><span>89-103</span></a>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>
        <div class="element empty-element"></div>

	</div>
	<div class="row">
      <div class="element empty-element"></div>
      <div class="element empty-element"></div>
      <div class="element empty-element"></div>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/La.pdf" class="element group-base" target="_blank"><span>la</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Ce.pdfe" class="element group-base" target="_blank"><span>ce</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Pr.pdf" class="element group-base" target="_blank"><span>Pr</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Nd.pdf" class="element group-base" target="_blank"><span>Nd</span></a>
		<a href="#span" class="element group-metadata" target="_blank"><span>Pm</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Sm.pdf" class="element group-base" target="_blank"><span>Sm</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Eu.pdf" class="element group-base" target="_blank"><span>Eu</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Gd.pdf" class="element group-base" target="_blank"><span>Gd</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Tb.pdf" class="element group-base" target="_blank"><span>Tb</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Dy.pdf" class="element group-base" target="_blank"><span>Dy</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Ho.pdf" class="element group-base" target="_blank"><span>Ho</span></a>
		<a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Er.pdf" class="element group-base" target="_blank"><span>Er</span></a>
        <a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Tm.pdf" class="element group-base" target="_blank"><span>Tm</span></a>
        <a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Yb.pdf" class="element group-base" target="_blank"><span>Yb</span></a>
        <a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Lu.pdf" class="element group-base" target="_blank"><span>Lu</span></a>
	</div>
	<div class="row">
      <div class="element empty-element"></div>
      <div class="element empty-element"></div>
      <div class="element empty-element"></div>
      <a href="#b" class="element group-metadata" target="_blank"><span>Ac</span></a>
      <a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/Th.pdf" class="element group-base" target="_blank"><span>Th</span></a>
      <a href="#kbd" class="element group-metadata" target="_blank"><span>Pa</span></a>
      <a href="http://srvags.sgc.gov.co/Archivos_Geoportal/Recursos_Minerales/UNIDOS_ATLAS/U.pdf" class="element group-base" target="_blank"><span>U</span></a>
      <a href="#span" class="element group-metadata" target="_blank"><span>Np</span></a>
      <a href="#wbr" class="element group-metadata" target="_blank"><span>Pu</span></a>
      <a href="#object" class="element group-metadata" target="_blank"><span>Am</span></a>
      <a href="#ins" class="element group-metadata" target="_blank"><span>Cm</span></a>
      <a href="#tfoot" class="element group-metadata" target="_blank"><span>Bk</span></a>
      <a href="#form" class="element group-metadata" target="_blank"><span>Cf</span></a>
      <a href="#option" class="element group-metadata" target="_blank"><span>Es</span></a>
      <a href="#summary" class="element group-metadata" target="_blank"><span>Fm</span></a>
      <a href="#form" class="element group-metadata" target="_blank"><span>Md</span></a>
      <a href="#option" class="element group-metadata" target="_blank"><span>No</span></a>
      <a href="#summary" class="element group-metadata" target="_blank"><span>Lr</span></a>
	</div>
</div>
          <!--
<div class="f-block elements">
	<div class="row">
	  <a href="#content" class="element group-web-components"><span>content</span></a>
	  <a href="#element" class="element group-web-components"><span>element</span></a>
	  <a href="#shadow" class="element group-web-components"><span>shadow</span></a>
	  <a href="#template" class="element group-web-components"><span>template</span></a>
	</div>
</div>
-->
<br>
<br>
<ul class="key">
	<li class="group-base">Elementos Incluidos en el Atlas Geoquímico Colombiano. Versión 2016</li>
	<li class="group-metadata">Elementos No Incluidos en el Atlas Geoquímico Colombiano. Versión 2016</li>

</ul>
<br>
<br>
<div style="height:200px">* Los elementos mayores expresados como óxidos: Al2O3, CaO, Fe2O3, K2O, MgO, Na2O, P2O5, SiO2, TiO2</div>
		
		<script type="text/javascript">
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		if (document.location.hostname === "madebymike.com.au") {
		  ga('create', 'UA-42027047-2', 'auto');
		  ga('send', 'pageview');
		}
		Array.prototype.forEach.call(document.querySelectorAll('.key li'), function(li){
			li.addEventListener('mouseenter', function(){
				document.body.classList.add('hover-'+this.className);
			});
			li.addEventListener('mouseleave', function(){
				document.body.classList.remove('hover-'+this.className);
			});
		});

		</script>
	






<!--  
<div id="dlg" title="TÉRMINOS GENERALES Y CONDICIONES"> 
<B>Los siguientes términos aplican de manera general a todos los productos/ información/datos que un usuario adquiere del SERVICIO GEOLÓGICO COLOMBIANO</B>
<br>
PRINCIPIO:  
<br> 

SERVICIO GEOLÓGICO COLOMBIANO no cede a ningún título la información generada o adquirida sino que concede licencia de uso para un fin específico y determinado. En consecuencia, los siguientes términos constituyen un Acuerdo de Licenciamiento de uso de Información.
<br> 
DEFINICIONES:
<br> 
LICENCIADO: a quien se le concede el permiso de uso de la información. Para los términos de SERVICIO GEOLÓGICO COLOMBIANO, el usuario.
<br> 
TÉRMINOS
<br> 
1.	Duración
<br> 
1.1	Sujeto a estas condiciones, la LICENCIA tomará efecto desde la fecha de firma del Acuerdo de Licenciamiento y terminará si ocurre alguno de los eventos descritos en el numeral 9 de este acuerdo.  
<br> 
2.	Licencia
<br> 
2.1	Estos términos y condiciones aplican a todos los datos LICENCIADOS, los cuales han sido adquiridos, o generados por SERVICIO GEOLÓGICO COLOMBIANO.

<br> 
2.2.	Todos los datos deben ser mantenidos exclusivamente para el uso de la parte licenciada y no pueden ser transmitidos, asignados, intercambiados o vendidos a ninguna tercera parte sin el consentimiento previo escrito de SERVICIO GEOLÓGICO COLOMBIANO.
<br> 
2.3.	El LICENCIADO no está autorizado a hacer copias de la información suministrada.
<br> 
3.	Propiedad
<br> 
3.1.	El LICENCIADO entiende que el SERVICIO GEOLÓGICO COLOMBIANO como Instituto Científico y Técnico adscrito al Ministerio de Minas y Energía y como parte del Sistema Nacional de Ciencia, Tecnología e Innovación - SNCTI retiene la propiedad de la información y los datos, bien en sus formas originales o en una forma modificada por el LICENCIADO y, de esta manera, también la propiedad intelectual de los mismos.
<br> 
4.	Cargos de licenciamiento
<br> 
4.1.	El cargo de licenciamiento no incluye impuestos, sobrecostos o cargos de transporte. Estos serán liquidados, en caso de ser necesarios, de manera separada.
<br> 
5.	Garantías
<br> 
5.1.	El SERVICIO GEOLÓGICO COLOMBIANO no garantiza que los datos estén libres de errores, pero avisará oportunamente de cualquier revisión o actualización a los datos, la cual puede ser hecha durante la validez de la LICENCIA.
<br> 
5.2.	El SERVICIO GEOLÓGICO COLOMBIANO garantiza que el licenciamiento no infringe los derechos de propiedad intelectual de ninguna persona o entidad.
<br> 
6.	Confidencialidad
<br> 
6.1.	El LICENCIADO efectuará todas las acciones necesarias para asegurar que ninguna persona, incluyendo, funcionarios, empleados, sub-contratistas o consultores contratados por el LICENCIADO, se acojan a las obligaciones establecidas en esta licencia. Se prohíbe usar la información para un propósito diferente al acordado en los términos de este acuerdo.
<br> 
7.	Explotación de los datos
<br> 
7.1.	El LICENCIADO no comercializará o intercambiará los datos, o producto o servicio alguno derivado o resultado de la incorporación de los datos sin autorización expresa por escrito de SERVICIO GEOLÓGICO COLOMBIANO. 
<br> 
7.2.	En los casos en que haya sido concedida autorización al LICENCIADO para llevar a efecto procesamiento adicional de los datos y que esté disponible para la venta a terceras partes, el SERVICIO GEOLÓGICO COLOMBIANO debe ser notificado y deberá recibir, libre de cualquier cargo, una copia de estos datos re-procesados en forma tanto digital como análoga.
<br> 
7.3.	Los datos no pueden ser usados en un prospecto de compañía o eslogan o publicados en ninguna forma sin autorización expresa por escrito de SERVICIO GEOLÓGICO COLOMBIANO.
<br> 
7.4.	Los datos usados en cualquier publicación o presentación pública resultante del uso de estos datos, deberán dar los respectivos créditos de manera apropiada al SERVICIO GEOLÓGICO COLOMBIANO, respetando siempre las normas de citación y referenciación bibliográfica. 
<br> 
8.	Liberación de responsabilidad 
<br> 
8.1.	El LICENCIADO acuerda liberar de toda responsabilidad al SERVICIO GEOLÓGICO COLOMBIANO, sus empleados, contratistas y cualquier parte reclamante bajo o a través del SERVICIO GEOLÓGICO COLOMBIANO con respecto a toda responsabilidad por pérdida o daños de los datos, causados por el uso que aquel haga de estos.
<br> 
8.2.	Las provisiones de esta condición sobrevivirán a la expiración o terminación temprana del Acuerdo de Licenciamiento.
<br> 
8.3.	Si los datos son dañados en tránsito, o son defectuosos en cualquier otra manera, ellos deben ser retornados al SERVICIO GEOLÓGICO COLOMBIANO en los siguientes 30 días. Un cargo de reemplazo será aplicado a los datos reemplazados después de este período.
<br> 
9.	Terminación
<br> 
9.1.	  El Acuerdo de Licenciamiento puede ser terminado: 
<br> 
(i)	Si cualquier parte viola alguno de los términos de este acuerdo, la otra parte deberá enviar una notificación escrita, especificando la violación en que incurrió y requiriendo remediar dicha situación de manera inmediata. Si pasados treinta (30) días calendario siguientes a la recepción de la notificación por la parte infractora sin que se haya remediado la violación, se dará por terminado este Acuerdo de Licenciamiento.  
<br> 
(ii)	Por cualquier parte mediante solicitud escrita, en la que manifieste su deseo de concluir el Acuerdo a la otra parte con un mes de anticipación a la fecha de la efectiva terminación. 
<br> 
10.	 Aplicación
<br> 
10.1.	  Las condiciones de licenciamiento establecidas aquí serán entendidas como el principio de acuerdo entre las partes.
<br> 
11.	 Acuerdo completo
<br> 
11.1.	 Este Acuerdo de Licenciamiento prevalecerá sobre todos los acuerdos y decisiones precedentes entre las partes relacionadas con los datos y constituye el acuerdo completo entre las partes. Ninguna adición o modificación del Acuerdo será anexada por las partes, a menos que se realice por escrito y cuente con el consentimiento libre y expreso de ambas partes.
<br> 
12.	 Notificaciones
<br> 
12.1.	Todas las notificaciones requeridas bajo el Acuerdo de Licenciamiento serán escritas y serán: (i) enviadas a la otra parte personalmente; o (ii) enviadas por fax a la otra parte, en cuyo caso la notificación se presumirá recibida a partir del recibo de confirmación del aparato de fax receptor; o (iii) enviada por correo certificado a la dirección de la otra parte.
<br> 
12.2.	El LICENCIADO no asignará, ni en parte ni en todo su conjunto, el beneficio o carga del Acuerdo de Licenciamiento, sin el consentimiento escrito previo del Director General del SERVICIO GEOLÓGICO COLOMBIANO.
<br> 
13.	 Ley Vigente
<br> 
13.1.	Este Acuerdo de Licenciamiento estará gobernado y constituido en concordancia con las leyes vigentes en el territorio colombiano.
<br> 
Acepto

 </div>
 -->