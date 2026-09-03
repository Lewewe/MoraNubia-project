.class public Lcom/zte/mifavor/weather/sdk/logger/DefaultLibLog;
.super Lcom/zte/mifavor/weather/sdk/logger/LibLog;
.source "DefaultLibLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/logger/LibLog;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 10
    sget-object p0, Lcom/zte/mifavor/weather/sdk/logger/DefaultLibLog$1;->$SwitchMap$com$zte$mifavor$weather$sdk$logger$LibLog$Level:[I

    invoke-virtual {p1}, Lcom/zte/mifavor/weather/sdk/logger/LibLog$Level;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 28
    :pswitch_0
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 25
    :pswitch_1
    invoke-static {p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 22
    :pswitch_2
    invoke-static {p2, p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 19
    :pswitch_3
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 16
    :pswitch_4
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12
    :pswitch_5
    invoke-static {p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
