.class Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$1;
.super Landroid/database/ContentObserver;
.source "GameSceneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 127
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 128
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;

    .line 129
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;->GAME_SCENE_CHANGED:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isGameScene()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;->onChange(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
