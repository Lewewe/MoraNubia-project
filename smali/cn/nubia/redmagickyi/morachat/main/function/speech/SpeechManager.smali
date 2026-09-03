.class public Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;
.super Lcom/zte/aivoice/AIVoiceManager;
.source "SpeechManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)V
    .locals 2

    .line 16
    new-instance v0, Lcom/zte/aivoice/AIVoiceManager$ASR;

    invoke-direct {v0, p1}, Lcom/zte/aivoice/AIVoiceManager$ASR;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;

    invoke-direct {v1, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)V

    invoke-direct {p0, v0, v1}, Lcom/zte/aivoice/AIVoiceManager;-><init>(Lcom/zte/aivoice/AIVoiceManager$ASR;Lcom/zte/aivoice/AIVoiceManager$TTS;)V

    return-void
.end method
