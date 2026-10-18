.class public final Lcb/c$c;
.super Lrd/o;
.source "ScanRepositoryImpl.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcb/c;->b(Lka/d;Lv9/p0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Ljc/c;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lcb/c$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcb/c$c;

    invoke-direct {v0}, Lcb/c$c;-><init>()V

    sput-object v0, Lcb/c$c;->h:Lcb/c$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljc/c;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcb/c;->b:Lcb/c;

    .line 4
    sget-object v0, Lcb/c;->e:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljc/f;

    .line 5
    invoke-interface {v0, p1}, Ljc/f;->a(Ljc/c;)V

    .line 6
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
