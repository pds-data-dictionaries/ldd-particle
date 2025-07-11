<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:particle  Version:2.0.2.0 - Fri Jul 11 23:10:46 UTC 2025 -->
  <!-- Generated from the PDS4 Information Model Version 1.24.0.0 - System Build 15.1 -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/particle/v2" prefix="particle"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="particle:Particle_Observation/particle:energy_range_maximum">
      <sch:assert test="@unit = ('J', 'MeV', 'eV', 'keV')">
        <title>particle:Particle_Observation/particle:energy_range_maximum/particle:energy_range_maximum</title>
        The attribute @unit must be equal to one of the following values 'J', 'MeV', 'eV', 'keV'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="particle:Particle_Observation/particle:energy_range_minimum">
      <sch:assert test="@unit = ('J', 'MeV', 'eV', 'keV')">
        <title>particle:Particle_Observation/particle:energy_range_minimum/particle:energy_range_minimum</title>
        The attribute @unit must be equal to one of the following values 'J', 'MeV', 'eV', 'keV'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="particle:Particle_Parameter/particle:ion_type">
      <sch:assert test=". = ('Alpha', 'Heavy', 'Proton')">
        <title>particle:Particle_Parameter/particle:ion_type/particle:ion_type</title>
        The attribute particle:Particle_Parameter/particle:ion_type must be equal to one of the following values 'Alpha', 'Heavy', 'Proton'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="particle:Particle_Parameter/particle:particle_measurement_type">
      <sch:assert test=". = ('Composition', 'Count Rate', 'Counts', 'Density', 'Density Profile', 'Distribution Function', 'Dynamic Pressure', 'Energy Flux', 'Energy Spectra', 'Flux', 'Mass Spectra', 'Pitch Angle Distribution', 'Pulse Height Analysis', 'Temperature', 'Thermal Pressure', 'Time of Flight', 'Velocity')">
        <title>particle:Particle_Parameter/particle:particle_measurement_type/particle:particle_measurement_type</title>
        The attribute particle:Particle_Parameter/particle:particle_measurement_type must be equal to one of the following values 'Composition', 'Count Rate', 'Counts', 'Density', 'Density Profile', 'Distribution Function', 'Dynamic Pressure', 'Energy Flux', 'Energy Spectra', 'Flux', 'Mass Spectra', 'Pitch Angle Distribution', 'Pulse Height Analysis', 'Temperature', 'Thermal Pressure', 'Time of Flight', 'Velocity'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="particle:Particle_Parameter/particle:particle_type">
      <sch:assert test=". = ('Electrons', 'Ions', 'Neutrals')">
        <title>particle:Particle_Parameter/particle:particle_type/particle:particle_type</title>
        The attribute particle:Particle_Parameter/particle:particle_type must be equal to one of the following values 'Electrons', 'Ions', 'Neutrals'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
