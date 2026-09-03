.class public interface abstract Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Logger;
.super Ljava/lang/Object;
.source "ExtendedHttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Logger"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 205
    new-instance v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Logger$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Logger$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Logger;->DEFAULT:Lcom/zte/mifavor/weather/sdk/helpers/ExtendedHttpLoggingInterceptor$Logger;

    return-void
.end method

.method public static synthetic lambda$static$0(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract log(Ljava/lang/String;)V
.end method
