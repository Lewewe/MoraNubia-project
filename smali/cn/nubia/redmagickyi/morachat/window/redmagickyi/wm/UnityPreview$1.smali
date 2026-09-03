.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$1;
.super Ljava/lang/Object;
.source "UnityPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->changeUnitySkin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 257
    const-string p0, "UnityPreview"

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isUnityModelSpeaking(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 258
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->startSpeaking()V

    :cond_0
    return-void
.end method
