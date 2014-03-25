baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'SwtDemo-Core';
                package: 'SwtDemo-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('SwtDemo-Core');
                group: 'Tests' with: #('SwtDemo-Tests');
                group: 'TravisCI' with: #('Tests') ]