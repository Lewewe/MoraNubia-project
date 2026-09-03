.class Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$2;
.super Ljava/lang/Object;
.source "MobileLiveSettingFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter$ClickInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MSG_SEND_MOBILE_LIVE_SETTINGS_CHANGED:I = 0x1


# instance fields
.field private handler:Landroid/os/Handler;

.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$2;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance p1, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$2$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$2$1;-><init>(Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$2;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$2;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 2

    .line 132
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$2;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->access$100(Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object p1

    .line 133
    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$2;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;

    invoke-static {p2}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->access$200(Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object p2

    const-string v0, "ar_image_item"

    invoke-virtual {p2, v0, p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$2;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;

    invoke-static {p2}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->access$300(Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;)V

    .line 137
    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$2;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    .line 139
    iput v0, p2, Landroid/os/Message;->what:I

    .line 140
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$2;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 146
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$2;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment$2;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;->access$000(Lcn/nubia/redmagickyi/ar/ui/fragment/MobileLiveSettingFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-static {p1, p0, p3}, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;->startDrag(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onItemTouch(Landroid/view/View;ILandroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
