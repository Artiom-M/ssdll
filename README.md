# Simple StarDict Lookup Library

This is a **cross-platform** (Windows, OS X, Linux) library which is capable of loading dictionaries in StarDict format and searching for a full-match translations. A lot of code is derived/compiled from the original _StarDict_ project, _sdcv_ and _QDict_ projects although this library contains a lot of improvements such as:

* **no dependency on `glib`**
* **correct support of 64-bit offsets** in dictionaries for all supported platforms
* **correct support of Unicode filepaths in Windows**
* substitution of tons of direct pointer allocations/memory access with safer alternatives such as `std::vector` and `std::string`
* the readability was enchanced dramatically in comparison to aforementioned projects (_this is a subjective opinion of course_) except of the original `dictziplib.cpp` which you better don't want to touch

Build instructions can be found in [BUILD.md](https://github.com/Ribtoks/ssdll/blob/master/BUILD.md) file.

## Usage

    #include <lookupdictionary.h>
    
    LookupDictionary lookupDictionary;
    
    if (lookupDictionary.loadDictionary(ifoFilepath)) {
        std::string translation;
        
        if (lookupDictionary.translate(word, translation)) {
            std::cout << translation << std::endl;
        }
    }


## How to contribute:

- [Fork](http://help.github.com/forking/) repository on GitHub
- Clone your fork locally
- Configure the upstream repo (`git remote add upstream git@github.com:Ribtoks/ssdll.git`)
- Create local branch (`git checkout -b your_feature`)
- Work on your feature
- Push the branch to GitHub (`git push origin your_feature`)
- Send a [pull request](https://help.github.com/articles/using-pull-requests) on GitHub

Contibutions are highly welcome!
