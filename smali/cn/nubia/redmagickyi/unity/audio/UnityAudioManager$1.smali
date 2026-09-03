.class Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$1;
.super Lcn/nubia/redmagickyi/unity/audio/ScreenLockedChecker;
.source "UnityAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$1;->this$0:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/audio/ScreenLockedChecker;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAudioAction(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$1;->this$0:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->handleAudioAction(Ljava/lang/String;)V

    return-void
.end method
