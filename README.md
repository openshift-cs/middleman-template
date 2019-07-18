Middleman Static Site Generator - OpenShift v3 Template
=======================================================

*Requires a source secret to already exist in your project for pulling private repos*

- Includes horizontal pod autoscaling components
- Can interact with Akamai CDN by automatically clearing cache on pushes

Fork this repo for a starting point on your application, or create just the template in your namespace

- For public repo's that don't rely on Akamai

        oc create -f https://raw.githubusercontent.com/openshift-cs/middleman-template/master/template.yaml

- For private repo's that don't rely on Akamai

        oc create -f https://raw.githubusercontent.com/openshift-cs/middleman-template/master/template-for-private.yaml

- For public repo's that rely on Akamai CDN caching

        oc create -f https://raw.githubusercontent.com/openshift-cs/middleman-template/master/template-with-akamai.yaml

- For private repo's that rely on Akamai CDN caching

        oc create -f https://raw.githubusercontent.com/openshift-cs/middleman-template/master/template-with-akamai-for-private.yaml
