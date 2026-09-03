.class Lcn/nubia/redmagickyi/crop/view/EditorView$8;
.super Ljava/lang/Object;
.source "EditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/crop/view/EditorView;
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

    .line 539
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$8;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 545
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$8;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$1000(Lcn/nubia/redmagickyi/crop/view/EditorView;)V

    .line 546
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$8;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$3800(Lcn/nubia/redmagickyi/crop/view/EditorView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$8;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$3600(Lcn/nubia/redmagickyi/crop/view/EditorView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$8;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$3700(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getPlaySpeed()F

    move-result p0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v2

    if-lez p0, :cond_0

    const-wide/16 v2, 0x78

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1f4

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
