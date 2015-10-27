��          �               �     �     �    �  ,   �  �   �     �  +   �    %  �   (  
  �  �   �  �   �  �   x  T   
	  �   _	     8
  �   V
     &     ?     F     O     g  
   s  �  ~          !    /  ,   B  �   o     T  +   i    �  �   �  
  %  �   0  �     �   �  T   z  �   �     �  �   �     �     �     �     �     �  
   �   An example in code: Build Process Builds happen on a server using only the RTD Public API. There is no reason that you couldn't build your own independent builder that wrote into the RTD namespace. The only thing that is currently unsupported there is a saner way than uploading the processed files as a zip. Deleting a stale or broken build environment If you have the *Use Virtualenv* option enabled, we will run ``setup.py install`` on your package, installing it into a virtual environment. You can also define additional packages to install with the *Requirements File* option. LaTeX (texlive-full) Packages installed in the build environment RTD doesn't expose this in the UI, but it is possible to remove the build directory of your project. If you want to remove a build environment for your project, hit http://readthedocs.org/wipe/<project_slug>/<version_slug>/. You must be logged in to do this. The :doc:`api/doc_builder` API explains the higher level parts of the API that you need to implement. A basic run goes something like this:: The build server does have a select number of C libraries installed, because they are used across a wide array of python projects. We can't install every C library out there, but we try and support the major ones. We currently have the following libraries installed: The documentation build system in RTD is made pluggable, so that you can build out your own backend. If you have a documentation format that isn't currently supported, you can add support by contributing a backend. The first step of the process is that we check out your code from the repository you have given us. If the code is already checked out, we update the copy to the branch that you have specified in your projects configuration. Then these files are copied across to our application servers from the build server. Once on the application servers, they are served from nginx. Then we build the proper backend code for the type of documentation you've selected. Understanding how Read the Docs builds your project will help you with debugging the problems you have with the site. It should also allow you to take advantage of certain things that happen during the build process. Understanding what's going on When we build your documentation, we run `sphinx-build -b html . _build/html`, where `html` would be replaced with the correct backend. We also create man pages and pdf's automatically based on your project. Writing your own builder dvipng graphviz libevent (libevent-dev) libxml2-dev libxslt1.1 Project-Id-Version:  readthedocs-docs
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-03-01 22:07+0800
PO-Revision-Date: 2014-03-01 14:09+0000
Last-Translator: Eric Holscher <eric@ericholscher.com>
Language: en
Language-Team: en <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.1.1
 An example in code: Build Process Builds happen on a server using only the RTD Public API. There is no reason that you couldn't build your own independent builder that wrote into the RTD namespace. The only thing that is currently unsupported there is a saner way than uploading the processed files as a zip. Deleting a stale or broken build environment If you have the *Use Virtualenv* option enabled, we will run ``setup.py install`` on your package, installing it into a virtual environment. You can also define additional packages to install with the *Requirements File* option. LaTeX (texlive-full) Packages installed in the build environment RTD doesn't expose this in the UI, but it is possible to remove the build directory of your project. If you want to remove a build environment for your project, hit http://readthedocs.org/wipe/<project_slug>/<version_slug>/. You must be logged in to do this. The :doc:`api/doc_builder` API explains the higher level parts of the API that you need to implement. A basic run goes something like this:: The build server does have a select number of C libraries installed, because they are used across a wide array of python projects. We can't install every C library out there, but we try and support the major ones. We currently have the following libraries installed: The documentation build system in RTD is made pluggable, so that you can build out your own backend. If you have a documentation format that isn't currently supported, you can add support by contributing a backend. The first step of the process is that we check out your code from the repository you have given us. If the code is already checked out, we update the copy to the branch that you have specified in your projects configuration. Then these files are copied across to our application servers from the build server. Once on the application servers, they are served from nginx. Then we build the proper backend code for the type of documentation you've selected. Understanding how Read the Docs builds your project will help you with debugging the problems you have with the site. It should also allow you to take advantage of certain things that happen during the build process. Understanding what's going on When we build your documentation, we run `sphinx-build -b html . _build/html`, where `html` would be replaced with the correct backend. We also create man pages and pdf's automatically based on your project. Writing your own builder dvipng graphviz libevent (libevent-dev) libxml2-dev libxslt1.1 