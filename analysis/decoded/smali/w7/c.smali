.class public final Lw7/c;
.super Ljava/lang/Object;
.source "BigfootAuthProvider.kt"

# interfaces
.implements Lvc/a;


# static fields
.field public static final a:Lw7/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw7/c;

    invoke-direct {v0}, Lw7/c;-><init>()V

    sput-object v0, Lw7/c;->a:Lw7/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    invoke-static {}, Lcom/openadapt/OfflinePairs;->cachedAccessToken()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 1
    invoke-static {}, Lcom/openadapt/OfflinePairs;->cachedAccessToken()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
