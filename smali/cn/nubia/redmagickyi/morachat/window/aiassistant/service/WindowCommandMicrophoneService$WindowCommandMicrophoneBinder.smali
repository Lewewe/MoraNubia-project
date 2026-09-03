.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;
.super Landroid/os/Binder;
.source "WindowCommandMicrophoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WindowCommandMicrophoneBinder"
.end annotation


# instance fields
.field private mService:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;)V
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

    .line 140
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 141
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;->mService:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;

    return-void
.end method


# virtual methods
.method public startASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcom/zte/aivoice/asr/OnASRClientListener;)V
    .locals 0

    .line 145
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;->mService:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->startASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcom/zte/aivoice/asr/OnASRClientListener;)V

    return-void
.end method

.method public stopASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V
    .locals 0

    .line 149
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService$WindowCommandMicrophoneBinder;->mService:Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandMicrophoneService;->stopASR(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V

    return-void
.end method
