<script setup lang="ts"></script>

<template>
  <div class="bg-gray-100 dark:bg-gray-900 text-gray-800 dark:text-white antialiased font-sans">
    <div class="flex flex-col h-screen">
      <!-- 顶部导航栏 -->
      <header class="bg-white dark:bg-gray-800 shadow dark:border-b dark:border-gray-700">
        <div class="flex items-center justify-between px-6 py-4">
          <div class="flex items-center">
            <!-- 移动端菜单按钮 -->
            <button
              id="menu-toggle"
              class="text-gray-500 dark:text-gray-200 hover:text-gray-600 dark:hover:text-gray-100 focus:outline-none focus:text-gray-600 dark:focus:text-gray-100 lg:hidden"
            >
              <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
              </svg>
            </button>
            <h2 class="text-xl font-semibold ml-2 lg:ml-0 lg:hidden">仪表盘</h2>
          </div>
          <div class="flex items-center">
            <button
              id="theme-toggle"
              class="text-gray-500 dark:text-gray-400 hover:bg-gray-100 dark:hover:bg-gray-700 focus:outline-none focus:ring-4 focus:ring-gray-200 dark:focus:ring-gray-700 rounded-lg text-sm p-2.5 mr-2"
            >
              <svg
                id="theme-toggle-dark-icon"
                class="hidden w-5 h-5"
                fill="currentColor"
                viewBox="0 0 20 20"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path d="M17.293 13.293A8 8 0 016.707 2.707a8.001 8.001 0 1010.586 10.586z"></path>
              </svg>
              <svg
                id="theme-toggle-light-icon"
                class="hidden w-5 h-5"
                fill="currentColor"
                viewBox="0 0 20 20"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path
                  d="M10 2a1 1 0 011 1v1a1 1 0 11-2 0V3a1 1 0 011-1zm4 8a4 4 0 11-8 0 4 4 0 018 0zm-.464 4.95l.707.707a1 1 0 001.414-1.414l-.707-.707a1 1 0 00-1.414 1.414zm2.12-10.607a1 1 0 010 1.414l-.706.707a1 1 0 11-1.414-1.414l.707-.707a1 1 0 011.414 0zM17 11a1 1 0 100-2h-1a1 1 0 100 2h1zm-7 4a1 1 0 011 1v1a1 1 0 11-2 0v-1a1 1 0 011-1zM5.05 6.464A1 1 0 106.465 5.05l-.708-.707a1 1 0 00-1.414 1.414l.707.707zm1.414 8.486l-.707.707a1 1 0 01-1.414-1.414l.707-.707a1 1 0 011.414 1.414zM4 11a1 1 0 100-2H3a1 1 0 000 2h1z"
                  fill-rule="evenodd"
                  clip-rule="evenodd"
                ></path>
              </svg>
            </button>
            <span class="mr-2">管理员</span>
            <button class="bg-primary-600 hover:bg-primary-700 text-white px-4 py-2 rounded-md">登出</button>
          </div>
        </div>
      </header>

      <div class="flex-1 flex overflow-hidden">
        <!-- 侧边栏 -->
        <aside id="sidebar" class="bg-white dark:bg-gray-900 dark:text-white w-48 flex-shrink-0 hidden lg:block">
          <div class="p-4 border-y dark:border-gray-700 dark:bg-gray-900 select-none">
            <!-- <h1 class="text-2xl font-semibold">管理系统</h1> -->
            <img src="https://one-hub.xiao5.info/assets/logo-llWtC-Rj.svg" class="h-12 w-full" alt="Logo" />
          </div>
          <nav class="mt-4 space-y-1">
            <a href="#" class="side-item">仪表盘</a>
            <a href="#" class="side-item">用户管理</a>
            <a href="#" class="side-item">内容管理</a>
            <a href="#" class="side-item">设置</a>
          </nav>
        </aside>

        <!-- 主要内容区域 -->
        <main class="flex-1 overflow-x-hidden overflow-y-auto bg-gray-200 dark:bg-gray-800 p-6">
          <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-6">
            <div class="bg-white dark:bg-gray-700 rounded-lg shadow-md p-6">
              <h3 class="text-lg font-semibold mb-2">总用户</h3>
              <p class="text-3xl font-bold">1,234</p>
            </div>
            <div class="bg-white dark:bg-gray-700 rounded-lg shadow-md p-6">
              <h3 class="text-lg font-semibold mb-2">今日活跃</h3>
              <p class="text-3xl font-bold">256</p>
            </div>
            <div class="bg-white dark:bg-gray-700 rounded-lg shadow-md p-6">
              <h3 class="text-lg font-semibold mb-2">总收入</h3>
              <p class="text-3xl font-bold">¥9,876</p>
            </div>
            <div class="bg-white dark:bg-gray-700 rounded-lg shadow-md p-6">
              <h3 class="text-lg font-semibold mb-2">待处理订单</h3>
              <p class="text-3xl font-bold">23</p>
            </div>
          </div>

          <div class="bg-white dark:bg-gray-700 rounded-lg shadow-md p-6">
            <h3 class="text-xl font-semibold mb-4">最近活动</h3>
            <div class="overflow-x-auto">
              <table class="w-full">
                <thead>
                  <tr class="bg-gray-100 dark:bg-gray-800">
                    <th class="text-left py-2 px-4">用户</th>
                    <th class="text-left py-2 px-4">活动</th>
                    <th class="text-left py-2 px-4">时间</th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="border-b dark:border-gray-600">
                    <td class="py-2 px-4">张三</td>
                    <td class="py-2 px-4">登录</td>
                    <td class="py-2 px-4">2023-06-10 14:30</td>
                  </tr>
                  <tr class="border-b dark:border-gray-600">
                    <td class="py-2 px-4">李四</td>
                    <td class="py-2 px-4">更新个人信息</td>
                    <td class="py-2 px-4">2023-06-10 13:45</td>
                  </tr>
                  <tr>
                    <td class="py-2 px-4">王五</td>
                    <td class="py-2 px-4">提交订单</td>
                    <td class="py-2 px-4">2023-06-10 12:20</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </main>
      </div>
    </div>
  </div>
</template>
