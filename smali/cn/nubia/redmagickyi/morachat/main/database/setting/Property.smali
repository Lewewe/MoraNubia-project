.class public Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;
.super Ljava/lang/Object;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;,
        Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;,
        Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Integer;
    }
.end annotation


# static fields
.field public static ACCOMPANY_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

.field public static ACCOMPANY_SWITCH_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

.field public static ACCOMPANY_SWITCH_FULLSCREEN:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

.field public static ACCOMPANY_SWITCH_RESPONSE_DURATION:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

.field public static AIAGENT_BACKGROUND:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

.field public static AIAGENT_SWITCH_SKIN_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

.field public static FEEDBACK_MUTE_WIFI1_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

.field public static FEEDBACK_MUTE_WIFI2_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

.field public static FEEDBACK_SWITCH_MUTE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

.field public static FEEDBACK_SWITCH_MUTE_MOBILE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

.field public static FEEDBACK_SWITCH_MUTE_WIFI1:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

.field public static FEEDBACK_SWITCH_MUTE_WIFI2:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

.field public static FEEDBACK_SWITCH_WORDS_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

.field public static OTHER_ENTRANCE_CARD_AUTO_EXPAND:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

.field public static OTHER_FULLSCREEN_ACCOMPANY_CAMERA_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

.field public static OTHER_WINDOW_LOCATION:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

.field public static OTHER_WINDOW_LOCATION_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

.field public static OTHER_WINDOW_MENU_AUTO_EXPAND:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    const-string v1, "prop.aiagent.switch.skin.show"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->AIAGENT_SWITCH_SKIN_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    .line 10
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    const-string v1, "prop.aiagent.background"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->AIAGENT_BACKGROUND:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    .line 14
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    const-string v1, "prop.accompany.switch"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    .line 16
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    const-string v1, "prop.accompany.switch.aiassistant"

    invoke-direct {v0, v1, v4}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    .line 18
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    const-string v1, "prop.accompany.switch.fullscreen"

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH_FULLSCREEN:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    .line 20
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    const-string v1, "prop.accompany.switch.response.duration"

    invoke-direct {v0, v1, v4}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH_RESPONSE_DURATION:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    .line 24
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    const-string v1, "prop.feedback.switch.words.show"

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_WORDS_SHOW:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    .line 26
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    const-string v1, "prop.feedback.switch.mute"

    invoke-direct {v0, v1, v4}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    .line 28
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    const-string v1, "prop.feedback.switch.mute.mobile"

    invoke-direct {v0, v1, v4}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_MOBILE:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    .line 30
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    const-string v1, "prop.feedback.switch.mute.wifi1"

    invoke-direct {v0, v1, v4}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI1:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    .line 32
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    const-string v1, "prop.feedback.mute.wifi1.name"

    invoke-direct {v0, v1, v3}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI1_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    .line 34
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    const-string v1, "prop.feedback.switch.mute.wifi2"

    invoke-direct {v0, v1, v4}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_SWITCH_MUTE_WIFI2:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    .line 36
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    const-string v1, "prop.feedback.mute.wifi2.name"

    invoke-direct {v0, v1, v3}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->FEEDBACK_MUTE_WIFI2_NAME:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    .line 40
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    const-string v1, "prop.other.entrance.card.auto.expand"

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_ENTRANCE_CARD_AUTO_EXPAND:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    .line 42
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    const-string v1, "prop.other.window.menu.auto.expand"

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_WINDOW_MENU_AUTO_EXPAND:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    .line 44
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    const-string v1, "prop.other.window.location"

    invoke-direct {v0, v1, v3}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_WINDOW_LOCATION:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    .line 46
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    const-string v1, "prop.other.window.location.aiassistant"

    invoke-direct {v0, v1, v3}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_WINDOW_LOCATION_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    .line 48
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    const-string v1, "prop.other.fullscreen.accompany.camera.switch"

    invoke-direct {v0, v1, v4}, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->OTHER_FULLSCREEN_ACCOMPANY_CAMERA_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
