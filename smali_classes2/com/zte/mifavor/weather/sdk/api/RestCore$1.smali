.class Lcom/zte/mifavor/weather/sdk/api/RestCore$1;
.super Ljava/lang/Object;
.source "RestCore.java"

# interfaces
.implements Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/weather/sdk/api/RestCore;->addLoggingInterceptor(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 0

    .line 37
    sget-boolean p0, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->LOGGABLE_RESTCORE:Z

    if-eqz p0, :cond_0

    .line 38
    const-string p0, "RestCore"

    invoke-static {p0, p1}, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
