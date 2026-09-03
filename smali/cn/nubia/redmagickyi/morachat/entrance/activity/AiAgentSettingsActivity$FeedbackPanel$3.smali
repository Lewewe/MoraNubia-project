.class Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel$3;
.super Ljava/lang/Object;
.source "AiAgentSettingsActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 558
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel$3;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderCkearClick()V
    .locals 3

    .line 567
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI2_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;Ljava/lang/String;)Z

    .line 568
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel$3;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->access$400(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)V

    return-void
.end method

.method public onWifiItemClick(Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 561
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p1

    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI2_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;Ljava/lang/String;)Z

    .line 562
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel$3;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->access$400(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)V

    return-void
.end method
