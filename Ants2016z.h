/*
 * Ants2016z.h
 *
 *  Created on: Dec 27, 2015
 *      Author: motey
 */

#ifndef ANTS2016Z_H_
#define ANTS2016Z_H_
#include <iostream>
#include <string>
#ifdef LINUX
#ifdef SDLTWO
#include <SDL2/SDL.h>
#else
#include <SDL/SDL.h>
#endif
#endif

/*
* Get the resource path for resources located in res/subDir
* It's assumed the project directory is structured like:
* bin/
*  the executable
* res/
*  Lesson1/
*  Lesson2/
*
* Paths returned will be Project_Root/res/subDir
*/
std::string getResourcePath(const std::string &subDir = "") {
#ifdef _WIN32
	const char PATH_SEP = '\\';
#else
	const char PATH_SEP = '/';
#endif
	static std::string baseRes;
	if (baseRes.empty()) {
		char *basePath = SDL_GetBasePath();
		if (basePath) {
			baseRes = basePath;
			SDL_free(basePath);
		}
		else {
			std::cerr << "Error getting resource path: " << SDL_GetError() << std::endl;
			return "";
		}
		//We replace the last bin/ with res/ to get the the resource path
		size_t pos = baseRes.rfind("bin");
		baseRes = baseRes.substr(0, pos) + "res" + PATH_SEP;
	}
	return subDir.empty() ? baseRes : baseRes + subDir + PATH_SEP;
}





#endif /* ANTS2016Z_H_ */
