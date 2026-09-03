.class Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$9;
.super Ljava/lang/Object;
.source "TechnologyCenterLayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->setOnMarginClickListener(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

.field final synthetic val$gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;Landroid/view/GestureDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 782
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$9;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$9;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 785
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 786
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$9;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
