.class Lcn/nubia/redmagickyi/crop/view/EditorView$3;
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

    .line 89
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 94
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$700(Lcn/nubia/redmagickyi/crop/view/EditorView;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$800(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$700(Lcn/nubia/redmagickyi/crop/view/EditorView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->seekTo(I)V

    .line 96
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$702(Lcn/nubia/redmagickyi/crop/view/EditorView;I)I

    .line 98
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$3;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$100(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;->onPlayPause()V

    return-void
.end method
