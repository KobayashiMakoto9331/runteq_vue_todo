<template>
  <div class="col-12 col-lg-4">
    <div
      :id="taskListId"
      class="bg-light rounded shadow m-3 p-3"
    >
      <slot name="header">
        タスク区分
      </slot>
      <template v-for="task in tasks">
        <TaskItem
          :key="task.id"
          :task="task"
          @handleShowTaskDetailModal="$listeners['handleShowTaskDetailModal']"
        />
      </template>
    </div>
  </div>
</template>

<script>
import TaskItem from "./TaskItem.vue"

export default {
  name: "TaskList",
  components: {
    TaskItem
  },
  props: {
    tasks: {
      type: Array,
      required: true
    },
    taskListId: {
      type: String,
      required: true
    }
  },
}
</script>
