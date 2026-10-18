.class public final Ld8/b$a;
.super Lrd/o;
.source "DeleteAccountApi.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld8/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lcom/nike/adapt/network/deleteAccount/DeleteAccountServiceApi;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Ld8/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld8/b$a;

    invoke-direct {v0}, Ld8/b$a;-><init>()V

    sput-object v0, Ld8/b$a;->h:Ld8/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    sget v0, Lw7/a;->a:I

    sget-object v1, Lg0/n;->c:Lg0/n;

    .line 2
    sget-object v0, Lg0/n;->h:Lcom/nike/adapt/network/deleteAccount/DeleteAccountServiceApi;

    if-nez v0, :cond_0

    .line 3
    const-class v2, Lcom/nike/adapt/network/deleteAccount/DeleteAccountServiceApi;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "https://gdpr.nike.com"

    invoke-static/range {v1 .. v6}, Lw7/a$a;->a(Lw7/a;Ljava/lang/Class;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/nike/adapt/network/deleteAccount/DeleteAccountServiceApi;

    sput-object v0, Lg0/n;->h:Lcom/nike/adapt/network/deleteAccount/DeleteAccountServiceApi;

    :cond_0
    return-object v0
.end method
