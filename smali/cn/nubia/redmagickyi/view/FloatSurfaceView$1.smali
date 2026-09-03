.class Lcn/nubia/redmagickyi/view/FloatSurfaceView$1;
.super Ljava/lang/Object;
.source "FloatSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/view/FloatSurfaceView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/FloatSurfaceView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$1;->this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$1;->this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->access$002(Lcn/nubia/redmagickyi/view/FloatSurfaceView;I)I

    .line 48
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$1;->this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->access$102(Lcn/nubia/redmagickyi/view/FloatSurfaceView;I)I

    .line 49
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$1;->this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->access$202(Lcn/nubia/redmagickyi/view/FloatSurfaceView;Landroid/view/ViewGroup$MarginLayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 50
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$1;->this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->access$200(Lcn/nubia/redmagickyi/view/FloatSurfaceView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->access$302(Lcn/nubia/redmagickyi/view/FloatSurfaceView;I)I

    .line 51
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$1;->this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->access$200(Lcn/nubia/redmagickyi/view/FloatSurfaceView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$1;->this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-static {v1}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->access$000(Lcn/nubia/redmagickyi/view/FloatSurfaceView;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$1;->this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$1;->this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-static {v2}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->access$300(Lcn/nubia/redmagickyi/view/FloatSurfaceView;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 52
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$1;->this$0:Lcn/nubia/redmagickyi/view/FloatSurfaceView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->access$200(Lcn/nubia/redmagickyi/view/FloatSurfaceView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
