.class public final Lo7/k$c;
.super Lrd/o;
.source "BigfootApplication.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo7/k;-><init>(Lcom/nike/adapt/BigfootApplication;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lo7/k$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo7/k$c;

    invoke-direct {v0}, Lo7/k$c;-><init>()V

    sput-object v0, Lo7/k$c;->h:Lo7/k$c;

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
    .locals 1

    sget-object v0, Lw7/c;->a:Lw7/c;

    invoke-virtual {v0}, Lw7/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
