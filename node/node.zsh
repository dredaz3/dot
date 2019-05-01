################################################################################
########################## NODE ################################################
################################################################################

# Update node version and add related git message and tag
nvu() {
    npm version $@

    read -p "Would you like to publish the package now? (y/n) " -n 1
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        npm publish
        echo "Your packages is published successfully."
    fi;
}
