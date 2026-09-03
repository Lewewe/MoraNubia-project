.class public Lcom/zte/aimodel/VoiceConstants$StateCode;
.super Ljava/lang/Object;
.source "VoiceConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/VoiceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateCode"
.end annotation


# static fields
.field public static final CANCELED:I = 0x0

.field public static final CONNECTION_STATUS:I = 0xb

.field public static final CONTEXTID:I = 0xa

.field public static final NOMATCH:I = 0x3

.field public static final RECOGNIZED:I = 0x2

.field public static final RECOGNIZING:I = 0x1

.field public static final SESSION_STARTED:I = 0x6

.field public static final SESSION_STOPPED:I = 0x7

.field public static final SPEECH_END_DETECTED:I = 0x9

.field public static final SPEECH_START_DETECTED:I = 0x8

.field public static final SYNTHESIZED:I = 0x5

.field public static final SYNTHESIZING:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
