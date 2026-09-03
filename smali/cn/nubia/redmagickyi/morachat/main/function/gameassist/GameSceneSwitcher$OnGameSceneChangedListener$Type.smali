.class public final enum Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;
.super Ljava/lang/Enum;
.source "GameSceneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;

.field public static final enum GAME_SCENE_CHANGED:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;

.field public static final enum TOP_ACTIVITY_CHANGED:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;
    .locals 2

    .line 147
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;->GAME_SCENE_CHANGED:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;->TOP_ACTIVITY_CHANGED:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;

    filled-new-array {v0, v1}, [Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 149
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;

    const-string v1, "GAME_SCENE_CHANGED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;->GAME_SCENE_CHANGED:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;

    .line 151
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;

    const-string v1, "TOP_ACTIVITY_CHANGED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;->TOP_ACTIVITY_CHANGED:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;

    .line 147
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;->$values()[Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;->$VALUES:[Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 147
    const-class v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;
    .locals 1

    .line 147
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;->$VALUES:[Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;

    return-object v0
.end method
