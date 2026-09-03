.class Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext$1;
.super Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
.source "NoOpContextDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;->newContext()Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;


# direct methods
.method constructor <init>(Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext$1;->this$0:Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;

    invoke-direct {p0}, Lcom/google/common/flogger/context/ScopedLoggingContext$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public install()Lcom/google/common/flogger/context/ScopedLoggingContext$LoggingContextCloseable;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext$1;->this$0:Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;

    invoke-static {v0}, Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;->access$100(Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;)V

    .line 74
    iget-object p0, p0, Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext$1;->this$0:Lcom/google/common/flogger/backend/NoOpContextDataProvider$NoOpScopedLoggingContext;

    return-object p0
.end method
