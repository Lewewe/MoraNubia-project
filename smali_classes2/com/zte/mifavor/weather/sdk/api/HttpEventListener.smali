.class public Lcom/zte/mifavor/weather/sdk/api/HttpEventListener;
.super Lokhttp3/EventListener;
.source "HttpEventListener.java"


# static fields
.field public static final FACTORY:Lokhttp3/EventListener$Factory;

.field private static final TAG:Ljava/lang/String; = "HttpEventListener"


# instance fields
.field private final callId:J

.field private final callStartNanos:J

.field private sbLog:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/zte/mifavor/weather/sdk/api/HttpEventListener$1;

    invoke-direct {v0}, Lcom/zte/mifavor/weather/sdk/api/HttpEventListener$1;-><init>()V

    sput-object v0, Lcom/zte/mifavor/weather/sdk/api/HttpEventListener;->FACTORY:Lokhttp3/EventListener$Factory;

    return-void
.end method

.method public constructor <init>(JLokhttp3/HttpUrl;J)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/zte/mifavor/weather/sdk/api/HttpEventListener;->callId:J

    .line 27
    iput-wide p4, p0, Lcom/zte/mifavor/weather/sdk/api/HttpEventListener;->callStartNanos:J

    .line 28
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "-------"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/HttpEventListener;->sbLog:Ljava/lang/StringBuilder;

    return-void
.end method

.method private recordEventLog(Ljava/lang/String;)V
    .locals 6

    .line 32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zte/mifavor/weather/sdk/api/HttpEventListener;->callStartNanos:J

    sub-long/2addr v0, v2

    .line 33
    iget-object v2, p0, Lcom/zte/mifavor/weather/sdk/api/HttpEventListener;->sbLog:Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    long-to-double v0, v0

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.3f-%s"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v0, "callEnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "callFailed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/HttpEventListener;->sbLog:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HttpEventListener"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public callEnd(Lokhttp3/Call;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    .line 47
    const-string p1, "callEnd"

    invoke-direct {p0, p1}, Lcom/zte/mifavor/weather/sdk/api/HttpEventListener;->recordEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 52
    const-string p1, "callFailed"

    invoke-direct {p0, p1}, Lcom/zte/mifavor/weather/sdk/api/HttpEventListener;->recordEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    .line 42
    const-string p1, "callStart"

    invoke-direct {p0, p1}, Lcom/zte/mifavor/weather/sdk/api/HttpEventListener;->recordEventLog(Ljava/lang/String;)V

    return-void
.end method
