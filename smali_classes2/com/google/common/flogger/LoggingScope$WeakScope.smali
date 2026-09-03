.class final Lcom/google/common/flogger/LoggingScope$WeakScope;
.super Lcom/google/common/flogger/LoggingScope;
.source "LoggingScope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/LoggingScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakScope"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;
    }
.end annotation


# instance fields
.field private final keyPart:Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/google/common/flogger/LoggingScope;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance p1, Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;

    invoke-direct {p1, p0}, Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;-><init>(Lcom/google/common/flogger/LoggingScope;)V

    iput-object p1, p0, Lcom/google/common/flogger/LoggingScope$WeakScope;->keyPart:Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;

    return-void
.end method


# virtual methods
.method closeForTesting()V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/google/common/flogger/LoggingScope$WeakScope;->keyPart:Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;

    invoke-static {p0}, Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;->access$100(Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;)V

    return-void
.end method

.method protected onClose(Ljava/lang/Runnable;)V
    .locals 0

    .line 132
    invoke-static {}, Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;->removeUnusedKeys()V

    .line 133
    iget-object p0, p0, Lcom/google/common/flogger/LoggingScope$WeakScope;->keyPart:Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;

    invoke-static {p0}, Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;->access$000(Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;)Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method protected specialize(Lcom/google/common/flogger/LogSiteKey;)Lcom/google/common/flogger/LogSiteKey;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/google/common/flogger/LoggingScope$WeakScope;->keyPart:Lcom/google/common/flogger/LoggingScope$WeakScope$KeyPart;

    invoke-static {p1, p0}, Lcom/google/common/flogger/SpecializedLogSiteKey;->of(Lcom/google/common/flogger/LogSiteKey;Ljava/lang/Object;)Lcom/google/common/flogger/LogSiteKey;

    move-result-object p0

    return-object p0
.end method
