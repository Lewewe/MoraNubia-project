.class Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$2;
.super Ljava/lang/Object;
.source "MenuView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$2;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 193
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 199
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$2;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->access$200(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;Z)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$2;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->access$100(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    return p2
.end method
