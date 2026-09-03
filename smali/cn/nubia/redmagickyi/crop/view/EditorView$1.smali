.class Lcn/nubia/redmagickyi/crop/view/EditorView$1;
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

    .line 56
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$1;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 60
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$1;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getClipLeftTime()I

    move-result v0

    .line 61
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$1;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$000(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/redmagickyi/crop/view/EditorView$ViewHolder;->mSeekbar:Lcn/nubia/redmagickyi/crop/view/SeekBarView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/crop/view/SeekBarView;->getClipRightTime()I

    move-result v1

    sub-int v2, v1, v0

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_0

    .line 63
    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$1;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {v2}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$100(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;

    move-result-object v2

    invoke-interface {v2, v0, v1, p1}, Lcn/nubia/redmagickyi/crop/base/BaseController$EditorPlayerListener;->onTrim(IILandroid/view/View;)V

    .line 64
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$1;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$200(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/CropView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 65
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$1;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$300(Lcn/nubia/redmagickyi/crop/view/EditorView;)Lcn/nubia/redmagickyi/crop/view/CropView;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/view/CropView;->requestLayout()V

    goto :goto_0

    :cond_0
    if-ge v2, v3, :cond_1

    .line 68
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/EditorView$1;->this$0:Lcn/nubia/redmagickyi/crop/view/EditorView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/crop/view/EditorView;->access$400(Lcn/nubia/redmagickyi/crop/view/EditorView;I)V

    :cond_1
    :goto_0
    return-void
.end method
