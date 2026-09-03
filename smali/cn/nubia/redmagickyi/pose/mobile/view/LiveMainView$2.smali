.class Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$2;
.super Landroid/os/Handler;
.source "LiveMainView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$2;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 99
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    .line 100
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView$2;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->access$100(Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/LiveMainView;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
