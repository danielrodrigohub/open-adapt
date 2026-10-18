.class public final Lcom/nike/adapt/BigfootApplication$h;
.super Lrd/o;
.source "BigfootApplication.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/BigfootApplication;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lo7/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lcom/nike/adapt/BigfootApplication$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/BigfootApplication$h;

    invoke-direct {v0}, Lcom/nike/adapt/BigfootApplication$h;-><init>()V

    sput-object v0, Lcom/nike/adapt/BigfootApplication$h;->h:Lcom/nike/adapt/BigfootApplication$h;

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

    sget-object v0, Lo7/x;->a:Lo7/x;

    return-object v0
.end method
