.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$3;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer$OnModelEmotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->initView(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$OnEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startPlayMotion(I)V
    .locals 0

    return-void
.end method

.method public startSpeaking()V
    .locals 0

    .line 232
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->showBotPopSpeaking()V

    return-void
.end method

.method public stopPlayMotion()V
    .locals 0

    return-void
.end method

.method public stopSpeaking()V
    .locals 0

    .line 237
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->hideBotPop()V

    return-void
.end method
