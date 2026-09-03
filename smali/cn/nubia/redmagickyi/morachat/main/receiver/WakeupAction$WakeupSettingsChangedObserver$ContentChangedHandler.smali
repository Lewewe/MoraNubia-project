.class Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver$ContentChangedHandler;
.super Landroid/os/Handler;
.source "WakeupAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentChangedHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver$ContentChangedHandler;->this$1:Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$1;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver$ContentChangedHandler;-><init>(Lcn/nubia/redmagickyi/morachat/main/receiver/WakeupAction$WakeupSettingsChangedObserver;)V

    return-void
.end method
