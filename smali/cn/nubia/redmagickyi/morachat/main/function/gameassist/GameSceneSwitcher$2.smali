.class Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$2;
.super Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;
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
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;

    invoke-direct {p0}, Lcom/zte/activityevent/ActivityEventsManagerWrapper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityEvent, eventid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", pkgname: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", activity: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", reserved: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "GameSceneSwitcher"

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->access$100()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->access$200()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 140
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;

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

    .line 141
    sget-object p2, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;->TOP_ACTIVITY_CHANGED:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher;->isGameScene()Z

    move-result p3

    invoke-interface {p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener;->onChange(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameSceneSwitcher$OnGameSceneChangedListener$Type;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
