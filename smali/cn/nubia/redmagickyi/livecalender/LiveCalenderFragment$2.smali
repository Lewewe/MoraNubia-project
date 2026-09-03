.class Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment$2;
.super Ljava/lang/Object;
.source "LiveCalenderFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$OnItemClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment$2;->this$0:Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(ILcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;)V
    .locals 1

    .line 158
    new-instance p1, Landroid/content/Intent;

    sget-object p2, Lcn/nubia/redmagickyi/network/NetConfig;->MORA_LIVE_CHANNEL:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 159
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment$2;->this$0:Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
