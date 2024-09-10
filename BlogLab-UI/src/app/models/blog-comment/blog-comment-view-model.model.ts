//This is only exist in front-end side. includes extra few more attributes.
//Create new model because
export class BlogCommentViewModel {

    constructor(
        public parentBlogCommentId: number,
        public blogCommentId: number,
        public blogId: number,
        public content: string,
        public username: string,
        public publishDate: Date,
        public updateDate: Date,

        public isEditable: boolean = false,
        public deleteConfirm: boolean = false,
        public isReplying: boolean = false,
        public comments: BlogCommentViewModel[]
    ) {}

}
