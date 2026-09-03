.class public final synthetic Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;

.field public final synthetic f$1:Landroid/net/NetworkCapabilities;


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback$$ExternalSyntheticLambda1;->f$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;

    iput-object p2, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback$$ExternalSyntheticLambda1;->f$1:Landroid/net/NetworkCapabilities;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback$$ExternalSyntheticLambda1;->f$0:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback$$ExternalSyntheticLambda1;->f$1:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$DefaultNetConnectCallback;->lambda$onCapabilitiesChanged$1$cn-nubia-redmagickyi-network-okhttp-utils-NetConnectManager$DefaultNetConnectCallback(Landroid/net/NetworkCapabilities;)V

    return-void
.end method
