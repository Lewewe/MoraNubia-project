.class Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;
.super Landroid/database/ContentObserver;
.source "WakeupAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeupSettingsChangedObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver$ContentChangedHandler;
    }
.end annotation


# instance fields
.field private handler:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver$ContentChangedHandler;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;->this$0:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;

    const/4 p1, 0x0

    .line 120
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 121
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver$ContentChangedHandler;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver$ContentChangedHandler;-><init>(Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;->handler:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver$ContentChangedHandler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;)Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver$ContentChangedHandler;
    .locals 0

    .line 114
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;->handler:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver$ContentChangedHandler;

    return-object p0
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;->this$0:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;->access$200(Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction;Ljava/lang/String;)Z

    return-void
.end method
