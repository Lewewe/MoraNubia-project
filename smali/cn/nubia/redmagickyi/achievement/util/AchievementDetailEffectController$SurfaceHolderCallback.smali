.class Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;
.super Ljava/lang/Object;
.source "AchievementDetailEffectController.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceHolderCallback"
.end annotation


# instance fields
.field private isEverCreated:Z

.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$1;)V
    .locals 0

    .line 286
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;-><init>(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 295
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "surfaceChanged and isEverCreated:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;->isEverCreated:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->Log(Ljava/lang/String;)V

    .line 296
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;->isEverCreated:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 297
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;->isEverCreated:Z

    .line 298
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->access$200(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;

    move-result-object p0

    invoke-static {p0, p3, p4}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->access$300(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;II)V

    goto :goto_0

    .line 299
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->access$200(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->access$200(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->access$400(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 300
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->access$200(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->access$500(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;Z)V

    .line 301
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->access$200(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;)Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;

    move-result-object p0

    invoke-static {p0, p3, p4}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;->access$300(Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$DrawHandler;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 290
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surfaceCreated and isEverCreated:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;->isEverCreated:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->Log(Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 307
    iget-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surfaceDestroyed and isEverCreated:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController$SurfaceHolderCallback;->isEverCreated:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementDetailEffectController;->Log(Ljava/lang/String;)V

    return-void
.end method
