.class Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$1;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView$OnInterceptTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$100(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$OnWindowTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$100(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$OnWindowTouchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$OnWindowTouchListener;->onWindowTouch(Landroid/view/MotionEvent;)V

    .line 129
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$200(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
