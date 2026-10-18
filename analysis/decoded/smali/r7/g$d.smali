.class public final Lr7/g$d;
.super Lrd/o;
.source "DeepLinkActions.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr7/g;
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
.field public static final h:Lr7/g$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr7/g$d;

    invoke-direct {v0}, Lr7/g$d;-><init>()V

    sput-object v0, Lr7/g$d;->h:Lr7/g$d;

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
