.class public final Lb8/b$a;
.super Lrd/o;
.source "PermissionsApi.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb8/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lcom/nike/adapt/network/dataopt/permissions/PermissionServiceApi;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lb8/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb8/b$a;

    invoke-direct {v0}, Lb8/b$a;-><init>()V

    sput-object v0, Lb8/b$a;->h:Lb8/b$a;

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
    sget-object v0, Lg0/n;->e:Lcom/nike/adapt/network/dataopt/permissions/PermissionServiceApi;

    if-nez v0, :cond_0

    .line 3
    const-class v2, Lcom/nike/adapt/network/dataopt/permissions/PermissionServiceApi;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lw7/a$a;->a(Lw7/a;Ljava/lang/Class;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nike/adapt/network/dataopt/permissions/PermissionServiceApi;

    sput-object v0, Lg0/n;->e:Lcom/nike/adapt/network/dataopt/permissions/PermissionServiceApi;

    :cond_0
    return-object v0
.end method
