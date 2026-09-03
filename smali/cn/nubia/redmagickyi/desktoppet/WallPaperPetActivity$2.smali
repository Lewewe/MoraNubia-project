.class Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$2;
.super Ljava/lang/Object;
.source "WallPaperPetActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$2;->this$0:Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnableWriteToFile()Z
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$2;->this$0:Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->access$100(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onSharedPreferenceChanged(Ljava/lang/String;)V
    .locals 4

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "commitLatch received key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->access$200()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 106
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    iget-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$2;->this$0:Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->access$100(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$2;->this$0:Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->access$100(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 110
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$2;->this$0:Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->access$302(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;Z)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
