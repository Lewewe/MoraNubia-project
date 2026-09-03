.class public interface abstract Lcn/nubia/redmagickyi/unity/util/Scenes;
.super Ljava/lang/Object;
.source "Scenes.java"


# static fields
.field public static final ALARM_CLOCK:Ljava/lang/String; = "alarmclock"

.field public static final AR_CAMERA:Ljava/lang/String; = "arCamera"

.field public static final DESKTOP_PET:Ljava/lang/String; = "wallpaperDoll"

.field public static final DIGITAL_HUMAN:Ljava/lang/String;

.field public static final GAME_SPACE:Ljava/lang/String; = "gamespace"

.field public static final LIVE_DEDAULT_2D:Ljava/lang/String; = "liveDefault2D"

.field public static final LIVE_FACE:Ljava/lang/String; = "liveFace"

.field public static final LIVE_HOLISTIC:Ljava/lang/String; = "liveHolistic"

.field public static final LIVE_MECHA_2D:Ljava/lang/String; = "liveMecha2D"

.field public static final LIVE_SLEEP_WEAR_2D:Ljava/lang/String; = "liveNighty2D"

.field public static final LIVE_UPPER_BODY:Ljava/lang/String; = "liveUpperBody"

.field public static final MORA_LIVE:Ljava/lang/String; = "poseLive"

.field public static final POWER_CHARGE:Ljava/lang/String; = "powercharge"

.field public static final VOICE_ASSISTANT:Ljava/lang/String; = "mora3DAgents"

.field public static final WALLPAPER:Ljava/lang/String; = "wallpaper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const-string v0, "mora"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "digitalHumanMora"

    goto :goto_0

    :cond_0
    const-string v0, "digitalHuman"

    :goto_0
    sput-object v0, Lcn/nubia/redmagickyi/unity/util/Scenes;->DIGITAL_HUMAN:Ljava/lang/String;

    return-void
.end method
