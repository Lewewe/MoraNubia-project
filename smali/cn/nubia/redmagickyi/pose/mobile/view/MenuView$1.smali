.class Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$1;
.super Landroid/os/Handler;
.source "MenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;
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

    .line 50
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 53
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    .line 54
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->access$000(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$OnMenuClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    const-string p1, "MenuView"

    const-string v0, "handleMessage dismiss menu"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;->access$000(Lcn/nubia/redmagickyi/pose/mobile/view/MenuView;)Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$OnMenuClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/MenuView$OnMenuClickListener;->onHideMenu()V

    :cond_0
    return-void
.end method
