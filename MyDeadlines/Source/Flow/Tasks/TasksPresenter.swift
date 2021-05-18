import Foundation

protocol TasksPresenter {
    
    func addNewTask()
}

final class TasksPresenterImp {
    
    private weak var view: TasksView?
    private weak var flow: Flow?
    
    init(view: TasksView, flow: Flow) {
        self.view = view
        self.flow = flow
    }
}

//MARK: - TasksPresenter
extension TasksPresenterImp: TasksPresenter {
    
    func addNewTask() {
        flow?.navigate(to: .addNewTask)
    }
}
