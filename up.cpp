#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include "/home/yx/OpenGLBP/common/configs.h"
#include <iostream>

void frame_buffer_size_callback(GLFWwindow* window, int width, int height);

void process_input(GLFWwindow* window);

void frame_buffer_size_callback(GLFWwindow* window, int width, int height)
{
	std::cout << "callback:width:" << width << std::endl;
	glViewport(0, 0, width / 2, height);
}

void process_input(GLFWwindow* window)
{
	if(glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS ||glfwGetKey(window, GLFW_KEY_DELETE) == GLFW_PRESS)
	{
		glfwSetWindowShouldClose(window, true);
	}
}

int main()
{
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    GLFWwindow* window = glfwCreateWindow(SCR_WIDTH, SCR_HEIGHT, "LearnOpenGL", NULL, NULL);
    if (window == NULL)
    {
    	std::cout << "failed to create glfw window!!!" << std::endl;
    	glfwTerminate();
    	return -1;
    }
    glfwMakeContextCurrent(window);
	bool findMethodPointer = gladLoadGLLoader((GLADloadproc)glfwGetProcAddress);
    if (!findMethodPointer)
    {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return -1;
    }    

    glfwSetFramebufferSizeCallback(window, frame_buffer_size_callback);
    while (!glfwWindowShouldClose(window))//process_input方法中设置了点击escape或者delete时会设置GlfwWindow应该关闭
    {
    	process_input(window);//渲染之前先检查用户按键操作
        glClearColor(0.2f, 0.3f, 0.3f, 1.0f);//设置要用什么颜色来清空屏幕的颜色缓冲
        glClear(GL_COLOR_BUFFER_BIT);//实际的清空屏幕颜色缓冲的操作
        glfwSwapBuffers(window);
        glfwPollEvents();//检查键盘输入、鼠标移动等操作
    }

	glfwTerminate();//
    return 0;
}