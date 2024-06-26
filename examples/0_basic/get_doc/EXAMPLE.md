# Check list of available fields (data) for each Endpoint or Document Model

You can access to the information from the Materials Project database through
various **Endpoints** of the Materials Project API. Each endpoint provides
different document model contatining different set of properties.

Endpoints are categorised into `materials.*` endpoints and `molecules.*`
endpoints. You are most likely to use `materials.summary` and `materials.thermo`
primarily.

For more information about Endpoints and Document Model, please see the
[documentation](https://next-gen.materialsproject.org/api#accessing-data). 


You can check a list of avaialble fields (properties) from the MPRester, as
follows:

```
available_fields = mpr.[endpoint].available_fields
```

The `available_fields` property for APIs is meant to refer to
the data available from the endpoint.

For example:

```
available_fields = mpr.materials.summary.available_fields
available_feilds = mpr.materials.thermo.available_fields
```

??? abstract "Available fields for `materials.summary` endpoint with `SummaryDoc`"
    ```
    builder_meta
    nsites
    elements
    nelements
    composition
    composition_reduced
    formula_pretty
    formula_anonymous
    chemsys
    volume
    density
    density_atomic
    symmetry
    property_name
    material_id
    deprecated
    deprecation_reasons
    last_updated
    origins
    warnings
    structure
    task_ids
    uncorrected_energy_per_atom
    energy_per_atom
    formation_energy_per_atom
    energy_above_hull
    is_stable
    equilibrium_reaction_energy_per_atom
    decomposes_to
    xas
    grain_boundaries
    band_gap
    cbm
    vbm
    efermi
    is_gap_direct
    is_metal
    es_source_calc_id
    bandstructure
    dos
    dos_energy_up
    dos_energy_down
    is_magnetic
    ordering
    total_magnetization
    total_magnetization_normalized_vol
    total_magnetization_normalized_formula_units
    num_magnetic_sites
    num_unique_magnetic_sites
    types_of_magnetic_species
    bulk_modulus
    shear_modulus
    universal_anisotropy
    homogeneous_poisson
    e_total
    e_ionic
    e_electronic
    n
    e_ij_max
    weighted_surface_energy_EV_PER_ANG2
    weighted_surface_energy
    weighted_work_function
    surface_anisotropy
    shape_factor
    has_reconstructed
    possible_species
    has_props
    theoretical
    database_IDs
    ```

??? abstract "Available fields for `materials.thermo` endpoint with `ThermoDoc`"
    ```
    builder_meta                                                                                                            
    nsites                                                                                                                  
    elements                                                                                                                
    nelements                                                                                                               
    composition                                                                                                             
    composition_reduced                                                                                                     
    formula_pretty                                                                                                          
    formula_anonymous                                                                                                       
    chemsys                                                                                                                 
    volume                                                                                                                  
    density                                                                                                                 
    density_atomic                                                                                                          
    symmetry                                                                                                                
    property_name                                                                                                           
    material_id                                                                                                             
    deprecated                                                                                                              
    deprecation_reasons                                                                                                     
    last_updated                                                                                                            
    origins                                                                                                                 
    warnings                                                                                                                
    thermo_type                                                                                                             
    thermo_id                                                                                                               
    uncorrected_energy_per_atom                                                                                             
    energy_per_atom                                                                                                         
    energy_uncertainy_per_atom                                                                                              
    formation_energy_per_atom                                                                                               
    energy_above_hull                                                                                                       
    is_stable                                                                                                               
    equilibrium_reaction_energy_per_atom                                                                                    
    decomposes_to                                                                                                           
    decomposition_enthalpy                                                                                                  
    decomposition_enthalpy_decomposes_to                                                                                    
    energy_type                                                                                                             
    entry_types                                                                                                             
    entries      
    ```


!!! note "Note"
    The available fields are not necessarily which fields you can use to query
    that data with via `search()`. See the API-specific search() kwargs for
    details on which parameters can be used for filtering queries.


