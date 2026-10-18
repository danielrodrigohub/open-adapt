.class public final Lo7/s$a$a;
.super Lrd/o;
.source "AdaptKitFactory.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo7/s$a;->a(Lo7/s;Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;ILjava/lang/Object;)Lcom/nike/adapt/adk/IAdaptRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lo7/s$a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo7/s$a$a;

    invoke-direct {v0}, Lo7/s$a$a;-><init>()V

    sput-object v0, Lo7/s$a$a;->h:Lo7/s$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
