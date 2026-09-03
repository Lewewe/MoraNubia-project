.class Lcn/nubia/redmagickyi/crop/view/EditorView$2;
.super Ljava/lang/Object;
.source "EditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/crop/view/EditorView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/crop/view/EditorView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$2;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$2;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$502(Lcn/nubia/redmagickyi/crop/view/EditorView;Z)Z

    .line 81
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$2;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->cancelClip()V

    .line 82
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$2;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->cancelVideoItem()V

    .line 83
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$2;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->onFinish(Z)V

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$2;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$600(Lcn/nubia/redmagickyi/crop/view/EditorView;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->finish()V

    return-void
.end method
